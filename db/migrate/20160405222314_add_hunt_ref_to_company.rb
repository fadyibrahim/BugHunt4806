class AddHuntRefToCompany < ActiveRecord::Migration
  def change
    add_reference :companies, :hunt, index: true, foreign_key: true
  end
end
