(defn reduce-string [bs [x & xs]]
  "leave only the first occurence for each character in input string"
  (cond (nil? x)         []
        (contains? bs x) (reduce-string bs xs)
        :else            (cons x
                               (reduce-string
                                (conj bs x) xs))))

(defn -main [] ((comp println #(apply str %) reduce-string) #{} (read-line)))

(-main)



;;;; considerations:
;;; check cond syntax
;;; check if there's an empty predicate
;;; check whether it's in or elem or whatever else
;;; look up destructuring
;;; Is -main necessary here?
;;; which sequence datatype is appropriate here? -> sets!


;;; paredit: how to change (f (g x) y) -> (f y (g x))? 
;;; emacs:   how to zap whitespace?
