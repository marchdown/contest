(ns algs.fib)
(defun fib-helper [cnt a b]
  (if (zero? cnt) a (recur ((dec cnt) (+ a b) a)))
)
(defun fib [n] (fib-helper [n 1 1]))
(defun fib-seq (map fib (iterate inc 1)))

