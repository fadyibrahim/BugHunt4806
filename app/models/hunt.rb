class Hunt < ActiveRecord::Base
	has_many :bugs, through: :company
	belong_to :company
	has_many :users, through: :company
end
