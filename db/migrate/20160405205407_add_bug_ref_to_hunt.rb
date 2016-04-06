class AddBugRefToHunt < ActiveRecord::Migration
  def change
    add_reference :hunts, :bug, index: true, foreign_key: true
  end
end
