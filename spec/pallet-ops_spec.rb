
require File.join(File.dirname(__FILE__), %w[spec_helper])
require 'pallet-ops'

describe PalletOps do
   it "evals" do
    PalletOps::Clojure::clj_eval '(println "hello")'
    service = PalletOps::compute_service({:a,1})
    print service.nodes
  end

   it "should call main" do
    PalletOps::main(["help"])
  end
end

