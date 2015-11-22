(ns spoj.primes1)

;; http://www.spoj.com/problems/PRIME1/

(defn bar [] (println "Hello, World!"))
(defn primesieve [n]
 )
(defn primeslist [n m])
(defn primes1 []
  (loop [t (Integer/parseInt readline)]
    (primeslist (map Integer/parseInt (split readline)) )
))

; Turner's sieve in haskell:
; euler (p:xs) = p : euler (xs `minus` (p*) (p:xs))
; primes = euler [2..]

; so the tricky part here is `minus` -- diffence between two
; 
