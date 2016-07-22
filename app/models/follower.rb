class Follower < ApplicationRecord
	belongs_to :user
	belongs_to :follower, :class => 'User'

	scope :not_blocked, :conditions => ['blocked = ?', false]
end
