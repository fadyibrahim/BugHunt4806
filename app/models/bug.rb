class Bug < ActiveRecord::Base
	belongs_to :company
	has_one :hunt, through: :company
	has_many :users, through: :company
	validates :name, uniqueness: true
	validates :url, uniqueness: true
end
