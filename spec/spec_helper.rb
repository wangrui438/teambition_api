require 'bundler/setup'
require 'teambition_api'

Bundler.setup

TeambitionApi.setup do |config|
  config.oauth_server  = "https://account.teambition.com"
  config.server        = "https://api.teambition.com"
  config.client_key    = "your_key"
  config.client_secret = "your_secrect"
end



