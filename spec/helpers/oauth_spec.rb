require 'spec_helper'

describe "test oauth service" do
  it "get authorize_url" do
    data = TeambitionApi::Helpers::Oauth.authorize_url("https://kaapmvmdlu.localtunnel.me/")
    p data
    expect(data).not_to be_nil
  end

  it "get access_token" do
    data = TeambitionApi::Helpers::Oauth.authorize_url("https://kaapmvmdlu.localtunnel.me/")
    
    
    data = TeambitionApi::Helpers::Oauth.get_access_token("123")
    p data
  end
end