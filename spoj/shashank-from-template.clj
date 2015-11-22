;; get input
(defn shashank [s]
  (- (count s) (count (partition-by identity s))))

(defn change-t [t] (dec t))
(defn do-stuff [] (println (str (shashank (read-line)))))
(defn should-stop? [t] (neg? (dec t)))
(defn -main [] 
  (loop [t (Integer/parseInt (read-line))] ;; t ← an int from STDIN
    (when-not (should-stop? t) ;; stop condition
      (let [s (read-line)]  ;; read from STDIN and bind
        (println (shashank s))) ;; process and print to STDOUT
      (recur (change-t t))) ;; loopity-loop.
    ))
(-main)
