class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower, initiation_date)
        BloodOath.new(self, follower, initiation_date)
    end

    def cult_population
        followers_cult = BloodOath.all.select do |blood|
            blood.cult == self
        end.map do |follow|
            follow.follower
        end
        followers_cult.size
    end

    def self.find_by_name(name)
        BloodOath.all.select do |find|
            find.follower.name == name
        end.map do |return_|
            return_.cult
        end
    end

    def self.find_by_location(location)
        BloodOath.all.select do |find|
            find.cult.location == location
        end.map do |return_|
            return_.cult
        end.uniq
    end

    def self.find_by_founding_year(year)
        BloodOath.all.select do |find|
            find.cult.founding_year == year
        end.map do |return_|
            return_.cult
        end.uniq
    end
end