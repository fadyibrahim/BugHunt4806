class Company < ActiveRecord::Base
	has_many :hunts 
	has_many :users
	has_many :bugs
	validates :name, uniqueness: true
	validates :website, uniqueness: true
end
