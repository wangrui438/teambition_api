module TeambitionApi
  module Helpers
    class Organization
      extend TeambitionApi::Helpers::Base

      ACTIONS_HASH = {
        get_all: "/api/organizations"
      }

      def self.get_organizations(access_token)
        params = { access_token: access_token }
        get(ACTIONS_HASH[:get_all], params)
      end
    end
  end
end