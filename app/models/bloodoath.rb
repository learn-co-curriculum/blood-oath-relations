class BloodOath
	attr_accessor :follower, :cult, :date

	@@all = []
	def initialize(follower, cult, date)
		@follower = follower
		@cult = cult
		@date = date
		@@all << self
	end

	def self.all
		@@all
	end

	def self.first_oath
		@@all.sort_by{|oath| oath.date}.first.follower
	end

end