;; get input
(defn parse-string-into-ints [s]
  (map #(Integer/parseInt %) (clojure.string/split s #"\s")))
(defn parse-string-into-doubles [s]
  (map #(Double/parseDouble %) (clojure.string/split s #"\s")))

(defn change-t [t] (dec t))
(defn do-stuff [t] t)
(defn should-stop? [t] (neg? (dec t)))
(defn -main [] 
  (loop [t (Integer/parseInt (read-line))] ;; t ← an int from STDIN
    (when-not (should-stop? t) ;; stop condition
      (let [s (read-line)]  ;; read from STDIN and bind
        (println (do-stuff s))) ;; process and print to STDOUT
      (recur (change-t t))) ;; loopity-loop.
    ))
(-main)
