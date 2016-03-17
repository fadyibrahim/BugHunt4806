class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.string :url
      t.string :description

      t.timestamps null: false
    end
  end
end
