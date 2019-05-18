class TripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :dep, :arr, :dep_time, :user_transport_id, :fare
end
