class Company < ActiveRecord::Base
	has_many :hunts 
	has_many :users
end
