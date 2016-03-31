class Hunt < ActiveRecord::Base
	belongs_to :company
	has_many :bugs
	has_many :users, through: :company
	validates :url, uniqueness: true
	validates :description, uniqueness: true
end
