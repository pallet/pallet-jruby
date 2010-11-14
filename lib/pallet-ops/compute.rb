require 'yaml'
require 'pallet-ops/clojure'

module PalletOps
  class Compute
    attr_accessor :service

    def initialize(service)
      self.service = service
    end

    def nodes
      PalletOps::Clojure::COMPUTE_NODES.invoke(self.service)
    end

    def self.load_config
      config = File.join(Java::java::lang::System.getProperty("user.home"),
                         ".pallet","config.yml")
      begin
        YAML.load_file(config)
      rescue
        nil
      end
    end
  end
end
