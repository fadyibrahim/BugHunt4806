class BugCreation < ActiveRecord::Base
	belongs_to :creator, :class_name => 'User', :foreign_key => 'user_id'
	has_one :bug
end
