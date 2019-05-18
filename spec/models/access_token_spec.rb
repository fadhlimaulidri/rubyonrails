require 'rails_helper'

RSpec.describe AccessToken, type: :model do
  it "should have valid factory" do

  end

  it "should validate token" do

  end

  it "should have token present after initialize" do
    expect(AccessToken.new.token).to be_present
  end

  it "should generate unique token" do
    user = create :user
    expect{user.create_access_token}.to change{ AccessToken.count}.by(1)
    expect(user.build_access_token).to be_valid
  end
end
