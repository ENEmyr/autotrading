import numpy as np
import math
from utils import *

class Simulator:
    def __init__(
            self,
            csv_file_path:str,
            model_type:str='tdnn',
            balance:int=1000000,
            buy_limit_from_balance_portion:float=1/3,
            trade_base_fee:float=0,
            trade_fee:float=.15, # e.g. commission fee in percentage
            vat:float=7, # in percentage
            cut_loss:float=2, #in percentage
            # max_buy_unit:int=1000,
            # max_sell_unit:int=1000,
            unit_multiplier:int=100,
            trade_sensitivity:float=.15,
            ema_alpha:float=.25,
            adaptive_ema_alpha:bool=False,
            trade_freq:int=1):
        self.model_type = model_type
        self.balance = balance
        self.buy_limit_from_balance_portion = buy_limit_from_balance_portion
        self.trade_base_fee = trade_base_fee
        self.trade_fee = trade_fee/100
        self.vat = vat/100
        self.cut_loss = cut_loss/100
        # self.stop_loss = 0
        # self.max_buy_unit = max_buy_unit
        # self.max_sell_unit = max_sell_unit
        self.unit_multiplier = unit_multiplier
        self.trade_sensitivity = trade_sensitivity # how delicate to graph changes in order to decide to buy/sell/hold
        self.trade_freq = trade_freq # do trade every trade_freq days
        self.adaptive_ema_alpha = adaptive_ema_alpha
        self.ema_alpha = ema_alpha
        if self.trade_sensitivity > 1 or self.trade_sensitivity < 0:
            raise Exception('trade_sensitivity must be in range of 0 to 1')
        # if self.max_buy_unit%unit_multiplier != 0 or self.max_sell_unit%unit_multiplier != 0:
            # raise Exception('max_buy_unit or max_sell_unit must be able to devide by unit_multiplier evenly.')
        self.predictor = Predictor(self.model_type, 32)
        self.volumes = get_volumes(csv_file_path)
        self.x, self.y = self.predictor.load_transform(csv_file_path)
        self.real_hist_price = self.y.reshape(-1, 1)[:, 0]
        self.pred = self.predictor.predict(self.x)
        self.adaptive_window_size = math.ceil(self.pred.std()*.3)
        if self.adaptive_ema_alpha == True:
            self.pred_hma = Smoother(self.pred.reshape(-1, 1)[:, 0], self.adaptive_window_size).transform('exponential')
            self.obv = on_balance_volume(self.volumes, self.pred_hma)
            self.obv_hma = Smoother(self.obv, self.adaptive_window_size).transform('exponential')
        else:
            self.pred_hma = Smoother(self.pred.reshape(-1, 1)[:, 0], alpha=self.ema_alpha).transform('exponential')
            self.obv = on_balance_volume(self.volumes, self.pred_hma)
            self.obv_hma = Smoother(self.obv, alpha=self.ema_alpha).transform('exponential')
        self.brought_units = {} # {"close_price":"n_units"}
        self.trade_record = [] # ('b/s/h', x, y, n_units, value) for record buy/sell/hold use for plot the graph

    def __cal_percent_change(self, old_data, new_data):
        pass

    def __cal_sharpe_ratio(self, return_port:float, risk_free_rate:float):
        std = return_port.std()
        pass

    def __calculate_trade_value(self, trade_type:str, n_units:int, price:float):
        if trade_type not in ['s', 'b']:
            raise Exception('trade_type must be s or b')
        value = n_units*price
        commission_fee = value*self.trade_fee
        vat_fee = commission_fee*self.vat
        if trade_type == 'b':
            value += commission_fee+vat_fee+self.trade_base_fee
        elif trade_type == 's':
            value -= commission_fee+vat_fee+self.trade_base_fee
        return value

    def __buy(self, curr_price:float, trade_portion:float, day:int):
        max_budget = self.balance*self.buy_limit_from_balance_portion
        tot_trade_budget = max_budget*trade_portion
        tot_trade_units = self.unit_multiplier*((tot_trade_budget//curr_price)//self.unit_multiplier)
        if tot_trade_units > 0:
            if curr_price not in list(self.brought_units):
                self.brought_units[curr_price] = tot_trade_units
            else:
                self.brought_units[curr_price] += tot_trade_units
            paid_off = self.__calculate_trade_value('b', tot_trade_units, curr_price)
            self.balance -= paid_off
            self.trade_record.append(('b', day, self.real_hist_price[day], tot_trade_units, -paid_off))
        return self.balance

    def __hold(self, day:int):
        self.trade_record.append(('h', day, 0, 0, 0))
        return self.balance

    def __sell(self, prev_price:float, curr_price:float, trade_portion:float, day:int):
        if curr_price <= prev_price-prev_price*self.cut_loss:
            # cut loss
            return_value = self.__calculate_trade_value('s', self.brought_units[prev_price], curr_price)
            self.balance += return_value
            self.trade_record.append(('s', day, self.real_hist_price[day], self.brought_units[prev_price], return_value))
            del(self.brought_units[prev_price])
            return self.balance
        else:
            tot_trade_units = self.unit_multiplier * (self.brought_units[prev_price]*trade_portion//self.unit_multiplier)
            if self.brought_units[prev_price]-tot_trade_units == 100:
                # trade all
                tot_trade_units += 100

            if tot_trade_units > 0:
                return_value = self.__calculate_trade_value('s', tot_trade_units, curr_price)
                past_paid_off = self.__calculate_trade_value('b', tot_trade_units, prev_price)
                if return_value-past_paid_off >= 0:
                    # sell if profit or at par
                    self.balance += return_value
                    self.trade_record.append(('s', day, self.real_hist_price[day], tot_trade_units, return_value))
                else:
                    # if curr_price <= prev_price-prev_price*self.cut_loss:
                        # self.balance += return_value
                        # self.trade_record.append(('s', tot_trade_units, return_value))
                    # else:
                    return self.__hold(day)
                self.brought_units[prev_price] -= tot_trade_units
                if self.brought_units[prev_price] == 0:
                    del(self.brought_units[prev_price])
            return self.balance

    def __autotrade(self, curr_price:float, next_price:float, day:int, date_duration:int=1):
        # return [0 or 1, n_of_unit_to_buy/sell], n_of_unit_to_buy must be able to devide by unit_multiplier
        slope_direction = (next_price-curr_price)/abs(next_price-curr_price) # + is mean up, - mean down
        degree = math.degrees(np.arctan(abs(next_price - curr_price)/date_duration)) # degree of slope on date duration, max at 90 degree
        degree = 90 if degree >= 89 else degree # round up if degree close to maximum
        if degree > self.trade_sensitivity*100:
            if slope_direction == 1:
                self.__buy(next_price, degree/90, day)
            else:
                for price_hist in list(self.brought_units):
                    self.__sell(price_hist, next_price, degree/90, day)
        else:
            # if curr_price <= prev_price-prev_price*self.cut_loss:
                # self.__sell(prev_price, curr_price, degree/90)
            # else:
            self.__hold(day)
        return self.balance

    def plot(self):
        pass

    def run(self):
        trim_days = 6 #self.adaptive_window_size if self.adaptive_ema_alpha == True else math.ceil(2/self.ema_alpha)
        for day in range(trim_days, len(self.real_hist_price)-trim_days):
            if day%self.trade_freq == 0:
                # if it start new trade period
                self.__autotrade(
                        curr_price=self.real_hist_price[day],
                        next_price=self.pred_hma[day+trim_days],
                        day=day,
                        date_duration=self.trade_freq)
        # sell all units
        for price in list(self.brought_units):
            self.balance += price*self.brought_units[price]
            del(self.brought_units[price])
        return self.balance,self.real_hist_price, self.y, self.pred, self.pred_hma, self.obv, self.obv_hma, self.trade_record, self.brought_units
