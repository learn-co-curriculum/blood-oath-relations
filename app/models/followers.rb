class Follower

  @@all = []

  attr_reader :name, :age, :life_motto

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def join_cult(cult)
    BloodOath.new(cult, self, Time.now.strftime("%Y-%m-%d"))
  end

  def cults
    BloodOath.all.select do |bloodo|
      bloodo.follower == self
    end.map {|bloodo| bloodo.cult}
  end

  def self.of_a_certain_age(num)
    @@all.select do |follower|
      follower.age == num
    end
  end

  def my_cults_slogans
    self.cults.map do |cult|
      cult.slogan
    end
  end

  def self.most_active
    active = {}
    BloodOath.all.each do |bloodo|
      if active[bloodo.follower]
        active[bloodo.follower] += 1
      else
        active[bloodo.follower] = 1
      end
    end
    active.max_by {|follower, amount| amount}[0]
  end

  def self.top_ten
    active = {}
    BloodOath.all.each do |bloodo|
      if active[bloodo.follower]
        active[bloodo.follower] += 1
      else
        active[bloodo.follower] = 1
      end
    end
    active.keys.sort_by {|follower| active[follower]}.slice(0,10)
  end


end

































  # attr_accessor :name, :age, :life_moto
  #
  # @@all = []
  #
  # def initialize(name, age, life_moto)
  #   @name = name
  #   @age = age
  #   @life_moto = life_moto
  #   @@all << self
  # end
  #
  # def self.all
  #   @@all
  # end
  #
  # def join_cult(cult)
  #   BloodOath.new(cult, self, Time.now.strftime("%Y-%m-%d"))
  # end
  #
  # def self.of_a_certain_age(num)
  #   @@all.select do |follower|
  #     follower.age == num
  #   end
  # end



#
# end
