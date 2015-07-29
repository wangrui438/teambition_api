module TeambitionApi
  module Helpers
    class Webhook
      extend TeambitionApi::Helpers::Base

      ACTION_HASH ={
        create_org_hook: "/api/organizations/%s/hooks?access_token=%s"
      }

      def self.create_organization_hook(organizationId, callback_url, events, access_token)
        params = { callbackURL: callback_url, active: true, events: ["project.create"]}

        post(ACTION_HASH[:create_org_hook] % [ organizationId, access_token ], params)
      end
    end
  end
end