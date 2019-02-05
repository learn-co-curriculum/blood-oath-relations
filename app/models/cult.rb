class Cult

  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.select do |cult|
      # binding.pry
      cult.name == name
    end
  end

  def self.find_by_location(location)
    @@all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    @@all.select do |cult|
      cult.founding_year == year
    end
  end

  def my_followers
    BloodOath.all.select do |bloodo|
      bloodo.cult == self
    end
  end

  def average_age
    total_age = 0
    self.my_followers.each do |follower|
      total_age += follower.follower.age
    end
    num_of_followers = my_followers.count
    average_age = total_age.to_f/num_of_followers.to_f
  end

  def my_followers_mottos
    self.my_followers.map do |follower|
      follower.follower.life_motto
    end
  end

  def self.least_popular
    popular_hash = {}
    BloodOath.all.each do |bloodo|
      if popular_hash[bloodo.cult]
        popular_hash[bloodo.cult] += 1
      else
        popular_hash[bloodo.cult] = 1
      end
    end
    popular_hash.keys.sort_by {|foll| popular_hash[foll]}.last
  end

  def self.most_common_location
    locations = {}
    BloodOath.all.each do |bloodo|
      if locations[bloodo.cult.location]
        locations[bloodo.cult.location] += 1
      else
        locations[bloodo.cult.location] = 1
      end
    end
    locations.keys.sort_by {|loc| locations[loc]}.first
    binding.pry
  end

  def minimum_age
    age = {}
    BloodOath.all.each do |bloodo|
      age[bloodo.follower] = bloodo.follower.age
    end
    # binding.pry
    age.keys.sort_by {|follower| age[follower]}.first.age
  end

  def recruit_follower(follower)
    if follower.age < self.minimum_age
      puts "You are too young. Try again in a few years!"
    else
      BloodOath.new(self, follower, Time.now)
    end
  end


end




































  # @@all = []
  #
  # attr_accessor :name, :location, :founding_year, :slogan, :cult_population
  #
  # def initialize(name, location, founding_year, slogan)
  #   @name = name
  #   @location = location
  #   @founding_year = founding_year
  #   @slogan = slogan
  #   @@all << self
  # end
  #
  # def self.all
  #   @@all
  # end
  #
  # def cult_population
  #   @@all.count
  # end
  #
  # def self.find_by_name(name)
  #   @@all.select do |cult|
  #     cult.name == name
  #   end
  # end
  #
  # def self.find_by_location(location)
  #   @@all.select do |cult|
  #     cult.location == location
  #   end
  # end
  #
  # def self.find_by_founding_year(founding_year)
  #   @@all.select do |cult|
  #     cult.founding_year == founding_year
  #   end
  # end
  #
  # def get_all_my_cults
  #   BloodOath.all.select do |bloodoath|
  #     bloodoath.cult == self
  #   end
  # end
  #
  # def get_all_ages
  #   @total_age = 0
  #   self.get_all_my_cults.each do |cult|
  #     @total_age += cult.follower.age
  #   end
  #   @total_age
  # end
  #
  # def average_age
  #   self.get_all_ages / self.get_all_my_cults.count
  # end
  #
  # def my_followers_mottos
  #   self.get_all_my_cults.select do |blood_oath_cult_instance|
  #     blood_oath_cult_instance.life_moto
  #   end
  # end

# end
