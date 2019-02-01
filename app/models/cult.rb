class Cult

  @@all = []

  attr_accessor :name, :location, :founding_year, :slogan, :cult_population

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

  def cult_population
    @@all.count
  end

  def self.find_by_name(name)
    @@all.select do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    @@all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    @@all.select do |cult|
      cult.founding_year == founding_year
    end
  end

  def get_all_my_cults
    BloodOath.all.select do |bloodoath|
      bloodoath.cult == self
    end
  end

  def get_all_ages
    @total_age = 0
    self.get_all_my_cults.each do |cult|
      @total_age += cult.follower.age
    end
    @total_age
  end

  def average_age
    self.get_all_ages / self.get_all_my_cults.count
  end

  def my_followers_mottos
    self.get_all_my_cults.select do |blood_oath_cult_instance|
      blood_oath_cult_instance.life_moto
    end
  end

end
