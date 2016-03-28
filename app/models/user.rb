class User < ActiveRecord::Base
	belongs_to :company
	has_many :created_bugs, :class_name => 'Bug', :foreign_key => 'bug_id', :through => bug_creations
	has_many :assigned_bugs, :class_name => 'Bug', :foreign_key => 'bug_id', :through => bug_assignmentss
	has_many :resolved_bugs, :class_name => 'Bug', :foreign_key => 'bug_id', :through => bug_resolutions
 	has_secure_password
end
