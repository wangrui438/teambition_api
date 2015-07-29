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
        TeambitionApi.logger.info uri
        TeambitionApi.logger.info params

        uri.query = URI.encode_www_form(params) unless params.nil?
        response = Net::HTTP.get_response(uri)
        
        TeambitionApi.logger.info response

        if response.is_a?(Net::HTTPSuccess)
          result = JSON.parse(response.body)
        else
          result = nil
          raise InvalidResponseError, "对方服务器无法正常访问，返回代码#{response.code}"
        end

        return result
      end

      def post(action, params, server = nil)
        uri = URI.join(TeambitionApi.config.server, action)
        unless server.nil?
          uri = URI.join(server, action)
        end

        TeambitionApi.logger.info uri
        TeambitionApi.logger.info params

        request = Net::HTTP::Post.new(uri)
        request["Content-Type"] = "application/json"
        request.body = params.to_json
        response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
          http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          http.ssl_version = :SSLv3
          http.request(request)
        end

        TeambitionApi.logger.info response.body

        if response.is_a?(Net::HTTPSuccess)
          result = JSON.parse(response.body)
        else
          result = nil
          raise InvalidResponseError, "对方服务器无法正常访问，返回代码#{response.code}"
        end

        return result
      end
    end
  end
end