class CreateBugResolutions < ActiveRecord::Migration
  def change
    create_table :bug_resolutions do |t|
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
