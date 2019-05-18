require 'rails_helper'
require 'pry'

RSpec.describe TripsController, type: :controller do
  describe "#index" do
    subject { get :index}
    it 'should return success response' do
      subject
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
       create_list :trip, 2
      subject
        Trip.recent.each_with_index do |trip, index|
        expect(json_data[index]['attributes']).to eq({
            "user_id" => trip.user_id,
            "dep" => trip.dep,
            "arr" => trip.arr,
            "dep_time" => trip.dep_time,
            "user_transport_id" => trip.user_transport_id,
            "fare" => 1
        })
        end
    end

    it 'should return trips in the proper order' do
      old_trip = create :trip
      newer_trip = create :trip

      subject
      expect(json_data.first['id']).to eq(old_trip.id.to_s)
      expect(json_data.last['id']).to eq(newer_trip.id.to_s)
    end

    it 'should pagination result' do
      create_list :trip, 3
      get :index, params: { page: 2, per_page: 1 }
      expect(json_data.length).to eq 1
      expected_trip = Trip.recent.second.id.to_s
      expect(json_data.first['id']).to eq(expected_trip)
    end
  end
end
