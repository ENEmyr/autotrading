import numpy as np

class Smoother():
    def __init__(self, data:list, window_size:int=7):
        self.data = data
        self.window_size = window_size
        self.ma_types = ['hamming', 'harmonic', 'simple']

    def __capture_window(self, data, window_size):
        i = 0
        windows = []
        while i < len(data) - window_size+1:
            window = data[i:i+window_size]
            windows.append(window)
            i += 1
        return windows

    def transform(self, ma_type='hamming'):
        if not ma_type.lower() in self.ma_types:
            raise Exception(f'Unsupport moving average type.\nSupport types[{self.ma_types}]')
        data = self.data
        n = self.window_size
        windows_data = self.__capture_window(data, n)
        # run Harmonic moving average
        moving_average = []
        for window in windows_data:
            if ma_type == 'harmonic':
                # Harmonic Moving Average
                divider = 0
                for x in window:
                    divider += 1/x
                hma = n/divider
                moving_average.append(hma)
            elif ma_type == 'hamming':
                # Hamming Moving Average
                weights = np.arange(1, n+1)
                hma = np.dot(window, weights)/weights.sum()
                moving_average.append(hma)
            elif ma_type =='simple':
                # Simple Moving Average
                moving_average.append(window.sum()/n)
        return np.array(moving_average)
