class AddForeignKeysToAchievements < ActiveRecord::Migration
  def change
    add_column :achievements, :user_id, :integer
    add_column :achievements, :location_id, :integer
  end
end
