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
