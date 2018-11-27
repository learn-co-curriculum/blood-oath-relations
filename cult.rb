class Cult

  attr_reader :name, :year, :slogan
  attr_accessor :location, :recruit_population

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, year, slogan, location, recruit_population)
    @name = name
    @year = year
    @slogan = slogan
    @location = location
    @recruit_population = recruit_population

    @@all << self
  end

  def recruit_follower(follower)
    Bloodoath.new(self, follower)
  end

  def cult_population
    self.recruit_population
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

  def self.find_by_founding_year(year)
    @@all.select do |cult|
      cult.year == year
    end
  end

  # Advanced Methods - Analytics!

  def followers
    Bloodoath.all.map do |follower|
      if follower.cult == self
        follower.follower
      end
    end
  end

  def average_age(followers)
    # c1 = [f2, f1, f4]
    # {f2: 24, f1: 24, f4: 33}
    # within a cult instance, there are followers
    # =>  How to find followers of a cult instance?
    # go through each follower and take their age
    # and add them together
    # and divide by the cult population
    followers.each do |age|
    end
  end

end # end of Cult class
