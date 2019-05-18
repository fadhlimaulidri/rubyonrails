class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :dep
      t.string :arr
      t.datetime :dep_time
      t.string :user_transport_id
      t.integer :fare

      t.timestamps
    end
  end
end
