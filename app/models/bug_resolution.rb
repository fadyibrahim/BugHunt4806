class BugResolution < ActiveRecord::Base
	has_many :resolver, :class_name => 'User', :foreign_key => 'user_id'
	belongs_to :bug
end
