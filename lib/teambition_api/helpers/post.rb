module TeambitionApi
  module Helpers
    class Post
      extend TeambitionApi::Helpers::Base

      ACTION_HASH = {
        get_post: "/api/posts/%s",
        get_project_post: "/api/projects/%s/posts",
        create_post: "/api/posts?access_token=%s",
        create_project_post: "/api/projects/%s/posts?access_token=%s"
      }

      def self.get_post(id, access_token)
        params = { access_token: access_token }
        get(ACTION_HASH[:get_post] % id, params)
      end

      def self.get_project_post(project_id, access_token)
        params = { access_token: access_token }
        get(ACTION_HASH[:get_project_post] % project_id, params)
      end

      def self.create_post(post = {}, access_token)
        post(ACTION_HASH[:create_post] % access_token, post)
      end

      def self.create_project_post(project_id, post = {}, access_token)
        post(ACTION_HASH[:create_project_post] % [project_id, access_token], post)
      end

    end
  end
end