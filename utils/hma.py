def hma(data, close_col, n):

    weights = np.arange(1, n + 1)
    hmas = data[close_col].rolling(n).apply(lambda x: np.dot(x, weights) / weights.sum(), raw=True).to_list()

    data['hma_' + str(n)] = hmas
    data['hma_' + str(n)] = data['hma_' + str(n)].fillna(0)
    return data

# data= hma(data, 'Adj Close', 20)