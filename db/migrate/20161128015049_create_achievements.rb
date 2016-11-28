class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.date :date
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
