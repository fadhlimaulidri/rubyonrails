FactoryBot.define do
  factory :trip do
    sequence(:user_id) { |n| n }
    sequence(:dep) { |n| "dep #{n}" }
    sequence(:arr) { |n| "arr #{n}" }
    sequence(:dep_time) { |n| "2019-09-10 00.00.0#{n}" }
    sequence(:user_transport_id) { |n| "#{n}" }
    sequence(:fare) { |n| "#{n}" }
  end
end
