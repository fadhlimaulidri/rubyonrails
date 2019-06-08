class User < ApplicationRecord
  # validates :username, presence: true, uniqueness:true
  # validates :provider, presence:true

  # has_one :access_token, dependent: :destroy
end
