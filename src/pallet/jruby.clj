(ns pallet.jruby
  "Convenience functions for invoking from jruby")

(defn- kw-key [m]
  (into {}
        (map
         #(vector (keyword (key %))
                  (if (instance? java.util.Map (val %))
                    (kw-key (val %))
                    (val %)))
         m)))

(defn kw-map [arg]
  (let [m (java.util.HashMap. arg)]
    (into {} (kw-key m))))

(defn kw-map-str [arg]
  (pr-str (kw-map arg)))
