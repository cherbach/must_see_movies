class Role < ActiveRecord::Base

	validates :character_name, :presence => true

	belongs_to :actor, :class_name => "Actor", :foeign_key => "actor_id"

	def actor
		return Actor.find_by({ :id => self.actor_id})
	end

	def movie
		return Movie.find_by({ :id=>self.movie_id})
	end

end
