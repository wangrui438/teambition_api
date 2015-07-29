require "teambition_api/version"
require "teambition_api/configuration"
require "teambition_api/helpers/base"
require "teambition_api/helpers/organization"
require "teambition_api/helpers/oauth"
require "teambition_api/helpers/webhook"
require "teambition_api/helpers/project"
require "teambition_api/helpers/post"
require "teambition_api/helpers/collection"
require "logger"

module TeambitionApi
  Error                 = Class.new(RuntimeError)
  InvalidResponseError  = Class.new(Error)

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
