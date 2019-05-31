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

    def self.all
        @@all
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
        self.all.find do |find|
            find.name == name
        end
    end

    def self.find_by_location(location)
        self.all.select do |find|
            find.location == location
        end.uniq
    end

    def self.find_by_founding_year(year)
        self.all.select do |find|
            find.founding_year == year
        end.uniq
    end

    def return_oaths
        BloodOath.all.select do |find|
            find.cult == self
        end
    end
    
    def average_age
        ages = self.return_oaths.map do |return_|
            return_.follower.age
        end

        sum = ages.inject {|sum, n| sum + n}

        sum * 1.0 / ages.size
    end

    def my_followers_mottos
        mottos = self.return_oaths.map do |something|
            something.follower.life_motto
        end

        mottos.each do |motto|
            puts motto
        end
    end

    def self.least_popular
        self.all.min_by do |cult|
            cult.cult_population
        end
    end

    def self.most_common_location
         location_array = self.all.map do |find|
            find.location
         end

         freq = location_array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
         location_array.max_by { |v| freq[v] }
    end
end