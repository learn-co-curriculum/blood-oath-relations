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
        self.all.select do |find|
            find.follower.age == age
        end
    end

    def my_cults_slogans
        slogans = self.cults.map do |something|
            something.slogan
        end

        slogans.each do |slogan|
            puts slogan
        end
    end

    def self.most_active
        self.all.max_by do |follower|
            follower.cults.size
        end
    end

    def self.top_ten
        new_all = self.all
        top_ten = []
        for i in 1..10
            most_active = new_all.max_by do |follower|
                follower.cults.size
            end
            top_ten << most_active
            new_all.delete_if do |active|
                active == most_active
            end
        end
        top_ten
    end
end