(ns spoj.harrydonuts)
(defn solve [[c k w]] (if (<= (* c w) k)
                        "yes"
                        "no"))
;(solve (map #(Integer/parseInt %) (clojure.string/split "9 4 2" #" ")))
;(vec (map #(Integer/parseInt %) (clojure.string/split "9 4 2" #"\s")))

(for [x (range (Integer/parseInt (read-line)))]
  (println 
    (solve (vec (map
           	#(Integer/parseInt %)
           	(clojure.string/split (read-line) #"\s"))))))