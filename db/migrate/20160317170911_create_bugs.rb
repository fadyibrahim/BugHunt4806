class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :name
      t.integer :points
      t.boolean :completed
      t.string :url
      t.datetime :created

      t.timestamps null: false
    end
  end
end
