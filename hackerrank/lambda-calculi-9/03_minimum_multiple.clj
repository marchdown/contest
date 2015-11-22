(defn -main [] (print (solve (read-string (read-line))                         ; n
                             (( comp (map read-string) vec split) (read-line)) ; ns
                             (Integer/parseInt (read-line))                    ; k
                             (slurp *in*)))) ;;;; read the rest. expect k lines

(defn solve  [n ns k qs] undefined)

(defn query  [l r ns]
  (mod
   (lcm (subvec ns l r))           ;; check indices
   1000000007))

(defn update [idx val ns] (assoc ns idx val))

(defn gcd [a b] (if (zero? b) a (recur b (mod a b))))
(defn lcm [a b] (/ (* a b) (gcd a b)))
(defn lcm-seq [ns] (fold lcm ns))


;;;;;;;;;;;;;;;; notes
;; read all lines of input:
;; http://stackoverflow.com/questions/20825498/how-to-read-all-lines-from-stdin-in-clojure

;;;;;; idioms:
;; assoc (since vector is integer-indexed)
;; subvec (constant-time
