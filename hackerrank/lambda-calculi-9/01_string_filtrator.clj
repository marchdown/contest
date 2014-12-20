;; leave only first occurences for each character in string
(defn reduce-string [bs xs]
  (cond (empty? xs)
        [] 

        (contains? bs (first xs))
        (reduce-string
         bs
         (rest xs))

        :else
        (cons (first xs)
              (reduce-string
               (conj bs (first xs))
               (rest xs)))))

(defn -main [] ((comp println #(apply str %)) (reduce-string #{} (read-line))))

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
