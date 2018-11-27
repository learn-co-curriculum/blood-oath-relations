class Follower

  attr_reader :name, :cult, :life_motto
  attr_accessor :age

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, life_motto, age)
    @name = name
    @life_motto = life_motto
    @age = age

    @@all << self
  end

  def cults
    Bloodoath.all.map do |follower|
      if follower.follower == self
        return follower.cult
      end
    end
  end

  def join_cult(cult)
    Bloodoath.new(cult, self)
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age >= age
    end
  end

end # end of Follower class
