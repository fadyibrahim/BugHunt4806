class Bug < ActiveRecord::Base
	belongs_to :company
	has_one :hunt, through: :company
	has_many :users. through: :company
end
