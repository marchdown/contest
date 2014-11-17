(ns algs.core-test
  (:require [clojure.test :refer :all]
            [algs.core :refer :all]))

(deftest a-test
  (testing "FIXME, I fail."
    (is (= 0 1))))
(deftest maxxor-test
  (testing "pretests"
    (is (= (maxxor 10 15) 7))))
