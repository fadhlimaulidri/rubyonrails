require 'rails_helper'

describe "home routing" do
  it 'should route to home index' do
    expect(get '/home').to route_to('home#index')
  end
end