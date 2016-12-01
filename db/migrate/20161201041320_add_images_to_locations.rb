class AddImagesToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :image2, :string
  end
end
