;; get input
(defn parse-string-into-ints [s]
  (map #(Integer/parseInt %) (clojure.string/split s #"\s")))
(defn parse-string-into-doubles [s]
  (map #(Double/parseDouble %) (clojure.string/split s #"\s")))

(defn change-t [t] (dec t))
(defn do-stuff [t] )
(defn should-stop? [t] (neg? (dec t)))
(loop [t (Integer/parseInt (readline)] ;; t ← an int from STDIN
       (when-not (should-stop? t)
         (let [s (read-line)]
           (do-stuff s))
         (recur (change-t t)))
))
