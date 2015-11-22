class VendingMachine(object):
    def motorUse(self, prices, purchases):
        cols = {}
        assert(len(prices) <= 50)
        for (i, shelf) in enumerate(prices):
            row = map(int, shelf.split())
            for j in range(len(row)):
                if j not in cols.items():
                    cols[j] = []
                cols[j].append(row[j])
    def buy(self, item):
        cols[item[0]][item[1]] = Null
        
        
            

        
