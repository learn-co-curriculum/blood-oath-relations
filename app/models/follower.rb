class Follower

  attr_reader :name, :age, :life_motto, :cults
  @@all = []

  def initialize(name, age, life_motto, cults)
    @name = name
    @age = age
    @life_motto = life_motto
    @cults = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    # age_array = []
    @@all.select do |person|
      person.age >= age
    end
  end



end
