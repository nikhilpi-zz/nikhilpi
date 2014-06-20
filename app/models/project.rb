class Project < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('end_date DESC') }
	validates :user_id, presence: true
end
