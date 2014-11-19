;; get input
(defn change-t [t] (dec t))
(defn do-stuff [t] )
(defn should-stop? [t] (neg? (dec t)))
(loop [t (Integer/parseInt (readline)] ;; t ← an int from STDIN
       (when-not (should-stop? t)
         (do-stuff t)
         (recur (change-t t)))
))
