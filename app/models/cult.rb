class Cult
	attr_accessor :name, :location, :founding_year, :slogan

	@@all = []

	def initialize(name_, location, founding_year, slogan)
		@name = name_
		@location = location
		@founding_year = founding_year
		@slogan = slogan
		@@all << self
	end

	def followers
		BloodOath.all.select do |oath|
			oath.cult == self
		end.map do |oath|
			oath.follower
		end
	end

	def recruit_follower(follower, date)
		BloodOath.new(follower, self, date)
	end

	def cult_population
		@followers.size
	end

	def self.find_by_name(cult)
		@@all.find do |cult_|
			cult_.name == cult
		end
	end

	def self.find_by_location(string)
		@@all.select do |cult|
			cult.location == string
		end
	end

	def self.find_by_founding_year(year)
		@@all.select do |cult|
			cult.founding_year == year
		end
	end

	def self.all
		@@all
	end

	def average_age
		total = 0
		self.followers.each do |follower|
			total += follower.age
		end
		total/self.followers.size
	end

	def my_followers_mottos
		self.followers.each do |follower|
			puts follower.life_motto
		end
	end

	def self.least_popular
		min_followers = nil
		min_cult = nil

		@@all.each do |cult|
			if min_cult == nil || cult.followers.size < min_followers
				min_followers = cult.followers.size
				min_cult = cult
			end
		end
		min_cult
	end

	def self.most_common_location
		loc_hash = {}
		@@all.each do |cult|
			if !loc_hash.keys.include?(cult.location)
				loc_hash[cult.location] = 0
			end
			loc_hash[cult.location] += 1
		end
		loc_hash.key(loc_hash.values.max)
	end






end