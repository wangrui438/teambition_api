module TeambitionApi
  module Helpers
    class Collection
      extend TeambitionApi::Helpers::Base

      ACTION_HASH = {
        create: "/api/collections?access_token=%s"
      }

      def self.create(collection = {}, access_token)
        post(ACTION_HASH[:create] % access_token, collection)
      end
    end
  end
end