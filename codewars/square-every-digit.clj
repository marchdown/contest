(ns square-every-digit)
(defn square-every-digit [n] 
  (apply str 
    (map (fn [s] (let [x (bigdec s)] (* x x)))
         (clojure.string/split (str n) #""))))

(defn square-every-digit [n]
  (->> (clojure.string/split (str n) #"")
   (map bigdec) 
   (map #(* % %))
   (apply str)))

(fn [n]
  (-> n
   (str )
   (clojure.string/split #"")
   (#(map bigdec %) ) 
   ((fn [n] (map #(* % %) n)))
   (#(apply str %))))


