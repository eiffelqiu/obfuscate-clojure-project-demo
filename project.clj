(defproject helloworld "0.1.0-SNAPSHOT"
  :description "hello world obfuscated"
  :url "http://likenote.com/helloworld"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.5.1"]]
  :main ^:skip-aot helloworld.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}}
  :aot :all
  :omit-source true)
