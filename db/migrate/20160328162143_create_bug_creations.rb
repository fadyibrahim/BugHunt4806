class CreateBugCreations < ActiveRecord::Migration
  def change
    create_table :bug_creations do |t|
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
