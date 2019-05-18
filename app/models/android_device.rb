class AndroidDevice < ApplicationRecord
  validates :model, presence:true
  validates :manufacture, presence:true
  validates :reg_id, presence:true , uniqueness:true
end
