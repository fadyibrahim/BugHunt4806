class User < ActiveRecord::Base
	belongs_to :company
	has_many :created_bugs, :class_name => 'Bug', :foreign_key => 'bug_id', :through => bug_creation
	has_many :assigned_bugs, :class_name => 'Bug', :foreign_key => 'bug_id', :through => bug_assignment
	has_many :resolved_bugs, :class_name => 'Bug', :foreign_key => 'bug_id', :through => bug_resolution
 	has_secure_password
	validates :email, uniqueness: true
end
