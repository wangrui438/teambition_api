require 'bundler/setup'
require 'teambition_api'

Bundler.setup

TeambitionApi.setup do |config|
  config.oauth_server  = "https://account.teambition.com"
  config.server        = "https://api.teambition.com"
  config.client_key    = "aa4b0c10-2465-11e5-bcc1-6bc32f3710eb"
  config.client_secret = "your_secrect"
end



