class Cult

attr_accessor :name, :location, :founding_year, :slogan
@@all = []
@@locations = []

def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@locations << location
    @@all << self
end

def blood_oath
    BloodOath.all.select do |blood_oath|
        blood_oath.cult == self
    end
end

def follower_for_cult
    self.blood_oath.map do |blood_oath|
        blood_oath.follower
    end
end

def recruit_follower(follower)
    follower_for_cult << follower
end

def cult_population
    follower_for_cult.count
end

def self.all
    @@all
end

def self.find_by_name(name)
    self.all.find do |cult|
    self.name == name
    end
end

def self.find_by_location(location)
self.all.select do |cult|
self.location == location
end
end

def self.find_by_founding_year(year)
self.all.select do |cult|
self.founding_year == year
end
end

def average_age
    sum = 0
    self.follower_for_cult.each do |follower|
        sum += follower.age
    end

    avg = sum/self.follower_for_cult.count
    return avg
end

def my_followers_mottos
    self.follower_for_cult.map do |follower|
        "#{follower.life_motto}"
    end
end

def self.least_popular
    min = nil
    min_cult = nil
    self.all.each do |cult|
        if min == nil || cult.follower_for_cult.count < min
            min_cult = cult
        end
    end
    min_cult
end

def self.locationz
    return @@locations.uniq
end

def self.most_common_location
    hash = {}

    self.locationz.each do |location|
        hash[location] = 0
    end

    @@locations.each do |location|
        if hash.keys.include?(location)
            hash[location] += 1
        else
        end
    end

    hash.max_by do |key, value|
        value
    end.first

    

end


end
