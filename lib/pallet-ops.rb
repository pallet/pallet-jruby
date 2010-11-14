PALLET_HOME = File.expand_path(File.dirname(__FILE__) + '/..') unless defined?(PALLET_HOME)

require 'java'
require 'pallet-ops/clojure'
require 'pallet-ops/compute'

module PalletOps

  def self.compute_service(options)
    # PalletOps::Compute.new(
    #   PalletOps::Clojure::COMPUTE_SERVICE.invoke(
    #     "",
    #     PalletOps::Clojure::IDENTITY, "",
    #     PalletOps::Clojure::CREDENTIAL, ""))
  end

  def self.main(args)
    config = PalletOps::Compute::load_config
    if config
      args.concat(["-defaults", PalletOps::Clojure::KW_MAP_STR.invoke(config)])
    end
    PalletOps::Clojure::APPLY.invoke(PalletOps::Clojure::MAIN, args)
  end
end

