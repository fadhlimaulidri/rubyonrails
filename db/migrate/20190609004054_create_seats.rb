class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :seat_number
      t.integer :user_id
      t.integer :trip_id
      t.timestamps
    end
  end
end
