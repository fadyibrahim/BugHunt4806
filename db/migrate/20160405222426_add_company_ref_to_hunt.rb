class AddCompanyRefToHunt < ActiveRecord::Migration
  def change
    add_reference :hunts, :company, index: true, foreign_key: true
  end
end
