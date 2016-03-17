class Hunt < ActiveRecord::Base
	belongs_to :company
	has_many :bugs, through: :company
	has_many :users, through: :company
end
