require 'net/http'
require 'json'

module TeambitionApi
  module Helpers
    module Base
      def get(action, params, server = nil)
        uri = URI.join(TeambitionApi.config.server, action)
        unless server.nil?
          uri = URI.join(server, action)
        end

        # request = Net::HTTP::Get.new(uri)
        

        uri.query = URI.encode_www_form(params) unless params.nil?
        response = Net::HTTP.get_response(uri)

        if response.is_a?(Net::HTTPSuccess)
          result = JSON.parse(response.body)
        else
          raise InvalidResponseError, "对方服务器无法正常访问，返回代码#{response.code}"
        end



        return result
      end

      def post(action, params, server = nil)
        uri = URI.join(TeambitionApi.config.server, action)
        unless server.nil?
          uri = URI.join(server, action)
        end

        response = Net::HTTP.post_form(uri, params)

        if response.is_a?(Net::HTTPSuccess)
          result = JSON.parse(response.body)
          MirrtalkApi.logger.debug result.inspect
        else
          raise InvalidResponseError, "对方服务器无法正常访问，返回代码#{response.code}"
        end

        return result
      end
    end
  end
end