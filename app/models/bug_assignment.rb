class BugAssignment < ActiveRecord::Base
	belongs_to :assignee, :class_name => 'User', :foreign_key => 'user_id'
	has_one :bug
end
