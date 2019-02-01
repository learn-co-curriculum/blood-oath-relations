class Cult

  attr_reader :name, :founding_year, :slogan, :location
  attr_accessor :cult_population, :followers
  @@all = []

  def initialize(name, founding_year, slogan, location, cult_population)
    @name = name
    @founding_year = founding_year
    @slogan = slogan
    @location = location
    @cult_population = cult_population
    @followers = []
    @@all << self
  end

  def recruit_follower(follower)
    @followers << follower
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.each do |cult|
      if cult.name == name
        return cult
      end
    end
  end

  def self.find_by_location(location)
    cult_location = []
    @@all.select do |cult|
      if cult.location == location
        cult_location << cult.name
        # return cult
      end
    end
    cult_location
  end

  def self.find_by_founding_year(founding_year)
    cult_founding_year = []
    @@all.select do |cult|
      if cult.founding_year == founding_year
        cult_founding_year << cult.name
        # return cult
      end
    end
    cult_founding_year
  end


end
