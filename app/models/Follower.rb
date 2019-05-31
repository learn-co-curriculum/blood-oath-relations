class Follower
attr_accessor :name, :age, :life_motto

@@all = []

def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
end

def cults
    Cult.all.select do |cult|
        cult.follower_for_cult == self
    end
end

def join_cult(cult)
    Cult.follower_for_cult << cult
end

def self.all
    @@all
end

def self.of_a_certain_age(age)
    self.all.select do |follower|
        follower.age >= age
    end
end





end
