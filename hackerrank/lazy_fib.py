# Enter your code here. Read input from STDIN. Print output to STDOUT

# fib is a lazy fibonacci sequence
def fib():
  a = 1
  b = 1
  while True:
    yield a
    a, b = b, a+b

lazy_fib = fib()

def isfib(n, f=lazy_fib.next()):
  if f > n:
    return False
  elif (f == n):
    return True
  else:
    return isfib(n, lazy_fib.next())
