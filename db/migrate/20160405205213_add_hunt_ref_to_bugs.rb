class AddHuntRefToBugs < ActiveRecord::Migration
  def change
    add_reference :bugs, :hunt, index: true, foreign_key: true
  end
end
