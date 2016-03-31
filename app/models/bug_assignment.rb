class BugAssignment < ActiveRecord::Base
	has_one :assignee, :class_name => 'User', :foreign_key => 'user_id'
	belongs_to :bug
end
