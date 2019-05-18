require "rails_helper"

describe 'access token route' do
  it "should routes to access_token create action" do
    expect(post '/login').to route_to('access_token#create')
  end
end
