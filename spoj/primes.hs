import Data.OrdList (minus)

primes = euler [2..]
euler (p : xs) = p : euler (xs `minus` map (*p) (p : xs))
