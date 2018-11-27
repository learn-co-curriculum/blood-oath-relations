require 'date'
require 'pry'
class Cult

  attr_accessor :cult_population
  attr_reader :name, :location, :founding_year, :slogan
  @@all = []
  def self.all
    @@all
  end
  def initialize(name, location, founding_year, slogan) #cult_population = 1
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
    #@cult_population = cult_population
  end

  def blood_oath
    BloodOath.all.select do |oath|
      oath.cult == self
    end
  end

  def recruit_follower(follower)
    d = Time.now.day
    m = Time.now.month
    y = Time.now.year
    BloodOath.new(self, follower, "#{y}-#{m}-#{d}")
  end

  def cult_population
    blood_oath.size
  end

  def self.find_by_name(name)
    Cult.all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    Cult.all.select {|cult| cult.location == location}
  end

  def self.find_by_founding_year(year)
    Cult.all.select {|cult| cult.founding_year.split("-")[0].to_i == year}
  end

  def average_age
    ages = []
    blood_oath.each do |oath|
      ages << oath.follower.age
    end
    ages.inject{ |sum, el| sum + el }.to_f / ages.length
  end
  #binding.pry


  def my_followers_mottos
    mottos = []
    blood_oath.each do |oath|
      mottos << oath.follower.life_motto
    end
    puts mottos
  end

  def self.least_popular
    cult_collection = []
    new_hash = {}
    Cult.all.each do |cult|
      cult_collection << cult.location
    end
    freq = cult_collection.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    return cult_collection.min_by { |v| freq[v] }
    end
  end

  def self.most_common_location
    cult_max = []
    Cult.all.each do |cult|
      cult_max << cult.cult_population
    end
    cult_max = cult_max.max
    max_cult = Cult.all.find do |cult|
      cult.cult_population == cult_max
    end
    max_cult.location
  end
