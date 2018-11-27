class Follower
  attr_reader :name, :life_motto, :age
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

  def blood_oath
    BloodOath.all.select do |oath|
      oath.follower == self
    end
  end

  def cults
    self.blood_oath.map do |oath|
      oath.cult
    end

  end

  def join_cult(cult)
    d = Time.now.day
    m = Time.now.month
    y = Time.now.year
    BloodOath.new(cult, self, "#{y}-#{m}-#{d}")
  end

  def self.of_a_certain_age(age)
    Follower.all.select {|follower| follower.age >= age}
  end

  def my_cults_slogans
      blood_oath.map { |oath| oath.cult.slogan }
  end

  def self.most_active
    self.all.max_by{|follower| follower.my_cults_slogans.size}
  end

  def self.top_ten
    top_activity = 0
    top = []
    self.all.map do |follower|
      if follower.my_cults_slogans.size > top_activity
        top_activity = follower.my_cults_slogans.size
        top << follower
      end
    end
    top
  end
end
