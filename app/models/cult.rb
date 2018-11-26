class Cult
  attr_reader :name, :founding_year
  attr_accessor :location, :slogan

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, founding_year, location, slogan)
    @name = name
    @founding_year = founding_year
    @location = location
    @slogan = slogan

    @@all << self
  end

  def recruit_follower(follower)
                            # (initiation_date, follower, cult)
    BloodOath.new(follower, self)
  end

  def cult_population
    BloodOath.all.select { |oath| oath.cult == self }.count
  end

  def self.find_by_name(name)
    @@all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    @@all.find {|cult| cult.location == location}
  end

  def self.find_by_founding_year(year)
    @@all.find {|cult| cult.founding_year == year}
  end

  def bloodOath
    BloodOath.all.select { |oath| oath.cult == self }
  end

  def followers
    self.bloodOath.map {|oath| oath.follower }
  end

  def average_age
    total_age = self.followers.reduce(0) {|memo,obj| memo + obj.age}
    total_age.to_f/followers.count
  end

  def my_followers_mottos
    self.followers.map { |follower| follower.life_motto }
  end

  def self.least_popular
    #BloodOath.all.each {|oath| {oath.cult => oath.follower}}
    hash = Hash.new(0)
    BloodOath.all.each { |oath| hash[oath.cult] += 1}
    hash.sort_by { |k, v| v}[0][0]
  end

  def self.most_common_location
    hash = Hash.new(0)
    self.all.each { |cult| hash[cult.location] += 1}
    hash.sort_by { |k, v| v}[-1][0]
  end

end
