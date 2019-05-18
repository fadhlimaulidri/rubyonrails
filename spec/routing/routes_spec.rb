require 'rails_helper'

describe "routes routes" do
  it 'should route to route index' do
    expect(get '/v1/routes').to route_to('v1/routes#index')
    expect(get '/v1/androiddevices').to route_to('v1/androiddevices#index')

  end

  it 'should route to routes show' do
    expect(get '/v1/routes/1').to route_to('v1/routes#show', id: '1')
  end
end