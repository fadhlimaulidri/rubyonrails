require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe '#validations' do

    it 'should test that the factory is valid' do
      expect(FactoryBot.build :android_device).to be_valid
    end

    it 'should validate the presence of the user_id' do
      trip = build :trip, user_id: ''
      expect(trip).not_to be_valid
      expect(trip.errors.messages[:user_id ]).to include("can't be blank")
    end

    it 'should validate the presence of the dep' do
      trip = build :trip, dep: ''
      expect(trip).not_to be_valid
      expect(trip.errors.messages[:dep ]).to include("can't be blank")
    end

    it 'should validate the presence of the arr' do
      trip = build :trip, arr: ''
      expect(trip).not_to be_valid
      expect(trip.errors.messages[:arr ]).to include("can't be blank")
    end

    it 'should validate the presence of the dep_time' do
      trip = build :trip, dep_time: ''
      expect(trip).not_to be_valid
      expect(trip.errors.messages[:dep_time ]).to include("can't be blank")
    end

    it 'should validate the presence of the user_transport_id' do
      trip = build :trip, user_transport_id: ''
      expect(trip).not_to be_valid
      expect(trip.errors.messages[:user_transport_id ]).to include("can't be blank")
    end

    it 'should validate the presence of the fare' do
      trip = build :trip, fare: ''
      expect(trip).not_to be_valid
      expect(trip.errors.messages[:fare ]).to include("can't be blank")
    end
  end

  describe ".recent" do
    it 'should list recent trip first' do
      old_trip = create :trip
      newer_trip = create :trip
      expect(described_class.recent).to eq(
        [newer_trip, old_trip]
      )
      old_trip.update_column :created_at, Time.now
      expect(described_class.recent).to eq(
        [old_trip, newer_trip]
      )
    end
  end
end
