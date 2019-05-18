require 'rails_helper'

describe "Trips routes" do
  it 'should route to trip index' do
    expect(get '/trips').to route_to('trips#index')
  end

  it "should route to trip show" do
    expect(get '/articles/1').to route_to('trips#show', id: '1')
  end
end
