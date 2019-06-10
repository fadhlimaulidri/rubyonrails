class CreateToggleFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :toggle_features do |t|
      t.string :feature_name
      t.boolean :state
      t.timestamps
    end
  end
end
