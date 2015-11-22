(defn -main [] (print
                (
                 (comp #(map read-string %) #(clojure.string/split % #"\s"))
                 (read-line))))         ;ns

;; note that clojure.string/split return a vector
