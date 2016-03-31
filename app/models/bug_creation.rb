class BugCreation < ActiveRecord::Base
	has_one :creator, :class_name => 'User', :foreign_key => 'user_id'
	belongs_to :bug
end
