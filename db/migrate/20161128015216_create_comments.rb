class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.date :date
      t.text :description
      t.timestamps null: false
    end
  end
end
