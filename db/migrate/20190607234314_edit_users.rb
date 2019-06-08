class EditUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :login, :username
    rename_column :users, :name, :first_name
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :city, :string
    add_column :users, :district, :string
    add_column :users, :village, :string
    add_column :users, :address, :string
    add_column :users, :state, :boolean
  end
end
