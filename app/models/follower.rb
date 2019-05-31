class Follower

	attr_accessor :name, :age, :life_motto

	@@all = []
	def initialize(name, age, life_motto)
		@name = name
		@age = age
		@life_motto = life_motto

		@@all << self
	end

	def cults
		BloodOath.all.select do |oath|
			oath.follower == self
		end.map do |oath|
			oath.cult
		end
	end


	def join_cult(cult, date)
		BloodOath.new(self, cult, date)
	end

	def self.all
		@@all
	end

	def self.of_a_certain_age(integer)
		@@all.select do |follow|
			follow.age == integer
		end
	end

	def my_cults_slogans
		self.cults.each do |cult|
			puts cult.slogan
		end
	end

	def self.most_active
		max = nil
		max_follower = nil

		@@all.each do |follower|
			if max_follower == nil || follower.cults.size > max
				max = follower.cults.size
				max_follower = follower
			end
		end
		max_follower
	end

	def self.top_ten
		@@all.sort_by {|object| object.cults.size}[0..9].reverse
	end



end