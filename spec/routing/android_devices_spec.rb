require 'rails_helper'

describe 'android device routes' do
  it 'should be route to android devices index' do
    expect(get '/v1/androiddevices').to route_to('v1/androiddevices#index')
  end
end