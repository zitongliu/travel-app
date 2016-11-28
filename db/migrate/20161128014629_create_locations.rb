class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :country
      t.text :desciption
      t.string :image
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
