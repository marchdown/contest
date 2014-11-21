(ns square-every-digit)
(defn square-every-digit [n] 
  (apply str 
    (map (fn [s] (let [x (bigdec s)] (* x x)))
         (clojure.string/split (str n) #""))))
