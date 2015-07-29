# TeambitionApi

## 安装

Gemfile文件添加如下行:

    gem 'teambition_api', '~> 0.0.1'

添加`teambition_api.rb`,在`initializers`文件夹下

   TeambitionApi.setup do |config|
      config.oauth_server  = "https://account.teambition.com"
      config.server        = "https://api.teambition.com"
      config.client_key    = "your_key"
      config.client_secret = "your_secrect"
   end
