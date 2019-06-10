class EditTrip < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :user_id
    rename_column :trips, :dep, :origin
    rename_column :trips, :arr, :destination
    add_column :trips, :date, :datetime
    add_column :trips, :transport_id, :integer
  end
end
