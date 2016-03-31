class CreateBugAssignments < ActiveRecord::Migration
  def change
    create_table :bug_assignments do |t|
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
