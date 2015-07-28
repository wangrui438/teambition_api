require 'spec_helper'

describe "test organization service" do
  it "get organizations" do
    data = TeambitionApi::Helpers::Organization.get_organizations
    p data
    expect(data).to eq("00")
  end
end