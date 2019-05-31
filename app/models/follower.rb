class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def find_bloodoath
        BloodOath.all.select do |blood|
            blood.follower == self
        end
    end

    def cults
        self.find_bloodoath.map do |oath|
            oath.cult
        end
    end

    def join_cult(cult, initiation_date)
        new_foll = BloodOath.new(cult, self, initiation_date)
    end

    def self.of_a_certain_age(age)
        BloodOath.all.select do |find|
            find.follower.age == age
        end.map do |return_|
            return_.follower
        end.uniq
    end
end