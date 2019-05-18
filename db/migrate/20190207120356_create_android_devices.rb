class CreateAndroidDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :android_devices do |t|
      t.string :model
      t.string :manufacture
      t.string :product_name
      t.string :reg_id
      t.integer :user_id
      t.boolean :logged_id
      t.string :apps_version
      t.string :player_id
      t.timestamps
    end
  end
end
