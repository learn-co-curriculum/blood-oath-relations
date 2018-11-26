class Follower
  attr_reader :name
  attr_accessor :age, :life_motto

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def cults
    self_cults = BloodOath.all.select {|oath| oath.follower == self}
    self_cults.map {|oath| oath.cult}
  end

  def join_cult(cult)
    BloodOath.new(self, cult)
  end

  def self.of_a_certain_age(age)
    @@all.select {|follower| follower.age >= age }
  end

  def my_cults_slogans
    self.cults.map { |cult| cult.slogan}
  end

  def self.most_active
    hash = Hash.new(0)
    BloodOath.all.each { |oath| hash[oath.follower] += 1}
    hash.sort_by { |k, v| v}[-1][0]
  end

  def self.top_ten
    hash = Hash.new(0)
    BloodOath.all.each { |oath| hash[oath.follower] += 1}
    array = hash.sort_by { |k, v| v}[-10..-1]
    array.map do |followers|
      followers[0]
    end
  end

end
