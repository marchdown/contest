;; get input
(defn shashank [s]
  (- (count s) (count (partition-by identity s))))

(defn change-t [t] (dec t))
(defn do-stuff [] (println (str (shashank (read-line)))))
(defn should-stop? [t] (neg? (dec t)))
(defn -main [] 
  (loop [t (Integer/parseInt (read-line))] ;; t ← an int from STDIN
    (when-not (should-stop? t) ;; stop condition
      (do-stuff) ;; I'm calling read-line from here. This is bad.
      (recur (change-t t))) ;; loopity-loop.
    ))
(-main)
