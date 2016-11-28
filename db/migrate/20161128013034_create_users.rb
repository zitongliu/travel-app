class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :gender
      t.date :dob
      t.string :country
      t.string :email
      t.text :password_digest

      t.timestamps null: false
    end
  end
end
