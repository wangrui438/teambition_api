module TeambitionApi
  module Helpers
    class Project
      extend TeambitionApi::Helpers::Base

      ACTION_HASH = {
        get_project: "/api/projects",
        all_collections: "/api/projects/%s/collections",
        copy: "/api/projects/%s/copy?access_token=%s"
      }

      def self.get_all_projects(access_token)
        params = { access_token: access_token }
        get(ACTION_HASH[:get_project], params)
      end

      def self.get_all_collections(project_id, access_token)
        params = { access_token: access_token }
        get(ACTION_HASH[:all_collections] % project_id, params)
      end

      def self.copy(project_id, option = {}, access_token)
        post(ACTION_HASH[:copy] % [project_id, access_token], option)
      end

    end
  end
end