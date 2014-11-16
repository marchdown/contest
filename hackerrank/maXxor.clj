(defn binlog [x] (int (/ (Math/log x) (Math/log 2))))
;;(defn abs [x] (if (neg? x) (- x) x))
(defn maxxor [m n]
  (if
    (not= (binlog m) (binlog n))
    (Math/abs (- m n))
    (dec(Math/pow 2 (binlog n)))))

;;(map binlog (range  2 12))
;;(dec (Math/pow 2 (binlog 3)))
;;(maxxor 10 15)

;;  (max(map binlog '(9 12)))
(binlog 15)
(maxxor 10 15)
(maxxor 10 12)