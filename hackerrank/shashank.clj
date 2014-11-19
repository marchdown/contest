(defn shashank [s]
  (- (count s) (count (partition-by identity s))))

(defn -main []
  (loop [t (Integer/parseInt (read-line))]
	(when (pos? t) 
	  (println (str (shashank (read-line))))
	  (recur (dec t)))))

(-main)  
