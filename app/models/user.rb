class User < ActiveRecord::Base
	belongs_to :company
	has_many :bugs, through: :company
	has_one :hunt, through: :company
 
end
