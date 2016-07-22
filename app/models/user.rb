class User < ApplicationRecord
	has_many :comments
	has_many :follwers, :class_name => 'Follower', :foreign_key => 'user_id'
	has_many :follwing, :class_name => 'Follower', :foreign_key => 'follower_id'

	def followers
		Follower.where(:user_id => self.id)
	end

	def following
		Follower.where(:follower_id => self.id)
	end
end
