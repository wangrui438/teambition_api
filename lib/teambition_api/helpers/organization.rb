module TeambitionApi
  module Helpers
    class Organization
      extend TeambitionApi::Helpers::Base

      ACTIONS_HASH = {
        get_all: "/api/organizations"
      }

      def self.get_organizations
        get(ACTIONS_HASH[:get_all])
      end
    end
  end
end