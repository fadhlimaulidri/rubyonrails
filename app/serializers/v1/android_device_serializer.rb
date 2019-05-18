class V1::AndroidDeviceSerializer < ActiveModel::Serializer
  attributes :id, :model, :manufacture, :product_name, :reg_id, :user_id, :logged_id, :apps_version, :player_id, :created_at, :updated_at

  def created_at
    object.created_at.strftime "%Y-%m-%d"
  end

  def updated_at
    object.created_at.strftime "%Y-%m-%d"
  end
end
