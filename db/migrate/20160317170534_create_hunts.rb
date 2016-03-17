class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.datetime :start
      t.datetime :end
      t.float :percentage
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
