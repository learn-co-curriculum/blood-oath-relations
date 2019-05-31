class BloodOath
    attr_reader :initiation_date, :cult, :follower

    @@all = []

    def initialize(cult, follower, initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        sorted = self.all.sort_by do |find|
            find.initiation_date
        end
        sorted[0].follower
    end
end