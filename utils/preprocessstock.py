import numpy as np
import pandas as pd
import os
from functools import reduce
from sklearn.preprocessing import MinMaxScaler

def preprocess(filepath:str, normalize:bool=True, save_to:str=None):
    filename = os.path.basename(filepath)
    if filename[filename.rfind('.'):] != '.csv':
        print('Support only csv file.')
        exit(0)
    if not os.path.exists(filepath):
        print('File not found.')
        exit(0)
    if save_to != None:
        if not os.path.exists(save_to):
            print('can not find save directory')
            exit(0)
    normalize_factors = [100, 100, 100, 100, 100000]
    df = pd.read_csv(filepath)
    stocks = df.drop(columns=['Date', 'Adj Close', 'Volume'])
    if 'Ticker' in df:
        # multiple stocks
        stocks = stocks.groupby(['Ticker'])
        stock_name = []
        stocks_df_list = []
        for name, group in stocks:
            stock_name.append(name)
            stock = group.drop(columns=['Ticker']).div(normalize_factors).to_numpy()
            stocks_df_list.append(stock[:len(stock)//7*7].reshape((len(stock)//7, 7, 5))) # trim samples to make it able to devide by 7 timesteps
        reduce_stocks = reduce(lambda a, b: np.concatenate((a, b)), stocks_df_list) # concate all stock into single array
        reduce_stocks = reduce_stocks if len(reduce_stocks)%2 == 0 else reduce_stocks[:-1] # trim list to make its length equal to even number
        all_data = reduce_stocks
        features, labels = reduce_stocks[0::2], reduce_stocks[1::2][:,:,3]*normalize_factors[3]
    else:
        # single stock
        stock = stocks.div(normalize_factors).to_numpy()
        stock = stock[:len(stock)//7*7].reshape((len(stock)//7, 7, 5))
        stock = stock if len(stock)%2 == 0 else stock[:-1]
        all_data = stock
        features, labels = stock[0::2], stock[1::2][:,:,3]*normalize_factors[3]
    if save_to != None:
        save_path = os.path.join(save_to, filename[:filename.rfind('.')]+'-preprocessed.npz')
        with open(save_path, 'wb') as f:
            np.savez(f, all_data=all_data, features=features, labels=labels, normalize_factors=normalize_factors)
        return save_path, all_data, features, labels, normalize_factors
    else:
        return all_data, features, labels, normalize_factors

def minmax_norm(data, window_size:int=504):
    pass
