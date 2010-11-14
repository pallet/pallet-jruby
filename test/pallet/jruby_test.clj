(ns pallet.jruby-test
  (:use
   clojure.test
   pallet.jruby))

(deftest kw-map-test
  (is (= {:a 1 :b {:c 2}}
         (kw-map {"a" 1 "b" {"c" 2}})))
  (is (map? (kw-map {"a" 1 "b" {"c" 2}}))))
