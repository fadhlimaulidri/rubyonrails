class Trip < ApplicationRecord
  validates :user_id, presence:true
  validates :dep, presence:true
  validates :arr, presence:true
  validates :dep_time, presence:true
  validates :user_transport_id, presence:true
  validates :fare, presence:true, uniqueness: true

  scope :recent, -> { order(created_at: :desc)}
end
