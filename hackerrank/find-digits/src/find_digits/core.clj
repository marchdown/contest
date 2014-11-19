(defn -main [] 
  (let [T (Integer/parseInt (read-line))]
    (loop [t T]
      (when (pos? t) ;; stop condition
        (let [s (read-line) n (Integer/parseInt s)]  ;; read from STDIN and bind
          (println 
           (count (filter 
                   #(zero? (mod n (Integer/parseInt %)))
                   (filter
                    #(not= "" %)
                    (clojure.string/split s #"")))))) 
        (recur (dec t))) ;; loopity-loop.
      )))
(-main)
