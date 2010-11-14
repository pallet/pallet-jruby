# Require all jar files, and include clojure.lang.RT
include Java::JRuby

Dir[PALLET_HOME+"/ext/*.jar"].each { |jar|
  JRuby.runtime.jruby_class_loader.addURL(java.io.File.new(jar).to_url)
}

module PalletOps
  module Clojure
    REQUIRE = Java::clojure::lang::RT.var("clojure.core","require")
    SYMBOL = Java::clojure::lang::RT.var("clojure.core","symbol")
    EVAL = Java::clojure::lang::RT.var("clojure.core","eval")
    APPLY = Java::clojure::lang::RT.var("clojure.core","apply")
    READ_STRING = Java::clojure::lang::RT.var("clojure.core","read-string")
    KEYWORD = Java::clojure::lang::RT.var("clojure.core","keyword")
    PR_STR = Java::clojure::lang::RT.var("clojure.core","pr-str")

    REQUIRE.invoke(SYMBOL.invoke("pallet.main"))
    REQUIRE.invoke(SYMBOL.invoke("pallet.core"))
    REQUIRE.invoke(SYMBOL.invoke("pallet.compute"))
    REQUIRE.invoke(SYMBOL.invoke("pallet.compute.jclouds"))
    REQUIRE.invoke(SYMBOL.invoke("pallet.blobstore.jclouds"))
    REQUIRE.invoke(SYMBOL.invoke("pallet.jruby"))

    KW_MAP_STR = Java::clojure::lang::RT.var("pallet.jruby","kw-map-str")
    COMPUTE_SERVICE_FROM_MAP = Java::clojure::lang::RT.var("pallet.compute",
                                                           "compute-service-from-map")
    COMPUTE_SERVICE = Java::clojure::lang::RT.var("pallet.compute", "compute-service")
    COMPUTE_NODES = Java::clojure::lang::RT.var("pallet.compute", "nodes")
    CORE_LIFT = Java::clojure::lang::RT.var("pallet.core", "lift")
    MAIN = Java::clojure::lang::RT.var("pallet.main", "-main")

    IDENTITY = PalletOps::Clojure::KEYWORD.invoke("identity")
    CREDENTIAL = PalletOps::Clojure::KEYWORD.invoke("credential")

    def self.clj_eval(s)
      cmd=Java::clojure::lang::RT.readString(s)
      eval=Java::clojure::lang::RT.var("clojure.core","eval")
      eval.invoke(cmd)
    end
  end
end
