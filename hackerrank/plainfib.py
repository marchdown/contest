def fib(count, a=1, b=1):
    if count <= 0:
        return a
    else:
        return fib(count-1, a+b, a)
