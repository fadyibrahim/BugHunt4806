class Bug < ActiveRecord::Base
	belongs_to :hunt
	has_one :bug_creation
	has_many :bug_assignment
	has_one :bug_resolution
end
