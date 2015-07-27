module TeambitionApi
  class Configuration
    def oauth_server
      @oauth_server ||= "https://account.teambition.com"
    end

    def oauth_server=(oauth_server)
      @oauth_server = oauth_server
    end

    def server
      @server ||= "https://api.teambition.com"
    end

    def server=(server)
      @server = server
    end

    def client_key
      @client_key ||= 'client_key'
    end

    def client_key=(client_key)
      @client_key = client_key
    end

    def client_secret
      @client_secret ||= 'client_secret'
    end

    def client_secret=(client_secret)
      @client_secret = client_secret
    end
  end
end