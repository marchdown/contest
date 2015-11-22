(def lazy-fib
  (lazy-cat 
   [1 0]
   (map + lazy-fib (rest lazy-fib))))
