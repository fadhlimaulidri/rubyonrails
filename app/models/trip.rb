class Trip < ApplicationRecord
  validates :origin, presence:true
  validates :destination, presence:true
  validates :dep_time, presence:true
  validates :transport_id, presence:true
  validates :fare, presence:true

  scope :recent, -> { order(created_at: :desc)}
end
