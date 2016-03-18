class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.integer :score
      t.string :pwd
      t.string :email

      t.timestamps null: false
    end
  end
end
