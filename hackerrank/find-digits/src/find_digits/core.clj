(defn -main [] 
  (loop [t (Integer/parseInt (read-line))]
    (when (pos? t)
      (let [s (read-line) n (Integer/parseInt s)]
        (println 
         (count (filter 
                 #(zero? (mod n (Integer/parseInt %)))
                 (filter  #(and (not= "0" %) ( not= "" %))
                  (clojure.string/split s #"")))))) 
      (recur (dec t)))))
(-main)
