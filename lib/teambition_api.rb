require "teambition_api/version"
require "teambition_api/configuration"

module TeambitionApi
  
  class << self
    def setup
      yield config
    end

    def config
      @config ||= Configuration.new
    end

    def logger
      @logger || Logger.new(STDOUT)
    end
  end
end
