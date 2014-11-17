(ns algs.core
  ( :use [algs.primes1]))

;;dud
(defn foo
  "I don't do a whole lot."
  [x]
  (println x "Hello, World!"))

;; shashank
(defn shashank [s]
  (- (count s) (count (partition-by identity s))))

(defn -main [] 
  (println "give me a number of lines followed by that many lines") 
  (loop [t (Integer/parseInt (read-line))]
    (when (pos? t) 
      (primes1 )
      (println (str (shashank (read-line))))
      (recur (dec t)))))

;; maxXor
(defn binlog [x] (int (/ (Math/log x) (Math/log 2))))
;;(defn abs [x] (if (neg? x) (- x) x))
(defn maxxor [m n]
  (if
    (partition-by identity (map binlog '(m n)))
    (Math/abs (- m n))
    (dec(Math/pow 2 (inc(binlog n))))))

;;(map binlog (range  2 12))
;;(dec (Math/pow 2 (binlog 3)))
;;(maxxor 10 15)

;;  (max(map binlog '(9 12)))

;; alternating-characters
