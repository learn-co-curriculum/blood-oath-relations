class Followers

  attr_accessor :name, :age, :life_moto

  @@all = []

  def initialize(name, age, life_moto)
    @name = name
    @age = age
    @life_moto = life_moto
    @@all << self
  end

  def self.all
    @@all
  end

  def join_cult(cult)
    BloodOath.new(cult, self, Time.now.strftime("%Y-%m-%d"))
  end

  def self.of_a_certain_age(num)
    @@all.select do |follower|
      follower.age == num
    end
  end




end
