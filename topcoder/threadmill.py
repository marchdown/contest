import math
class ExerciseMachine:
    def getPercentages(self, time):
        total = float((lambda t: int(t[0])*3600+int(t[1])*60+int(t[2]))(time.split(':')))
        print "total: ", total
#        step = total/100
        def shown(p):
            x = total/100.0 * p
            return x == math.floor(x)
        return sum(map(shown, range(1,100)))
