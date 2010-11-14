(defproject pallet-jruby "0.1.0-SNAPSHOT"
  :description "Pallet jruby gem"
  :dependencies [[org.clojure/clojure "1.2.0"]
                 [org.clojure/clojure-contrib "1.2.0"]
                 [org.cloudhoist/pallet "0.3.0-SNAPSHOT"]
                 [org.jclouds/jclouds-all "1.0-SNAPSHOT"]
                 [org.jclouds/jclouds-jsch "1.0-SNAPSHOT"]
                 [org.jclouds/jclouds-log4j "1.0-SNAPSHOT"]
                 [log4j/log4j "1.2.14"]]
 :library-path "ext"
 :jar-dir "ext/")
