class AddDescriptionToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :description, :text
    remove_column :locations, :desciption, :text
  end
end
