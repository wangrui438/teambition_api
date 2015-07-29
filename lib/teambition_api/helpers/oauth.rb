module TeambitionApi
  module Helpers
    class Oauth
      extend TeambitionApi::Helpers::Base

      ACTIONS_HASH = {
        authorize: "/oauth2/authorize",
        access_token: "/oauth2/access_token"
      }


      def self.authorize_url(callback_url, state)
        server_url = "#{TeambitionApi.config.oauth_server}#{ACTIONS_HASH[:authorize]}?client_id=#{TeambitionApi.config.client_key}&redirect_uri=#{callback_url}&state=#{state}"
        return server_url
      end

      def self.get_access_token(code)
        params = { client_id: TeambitionApi.config.client_key, client_secret: TeambitionApi.config.client_secret, code: code }
        result = post(ACTIONS_HASH[:access_token], params, TeambitionApi.config.oauth_server)
        return result["access_token"]
      end
    end
  end
end