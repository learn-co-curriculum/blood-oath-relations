require 'pry'
require 'date'
class BloodOath
  attr_reader :cult, :follower, :initiation_date
  @@all = []
    def self.all
      @@all
    end

    def initialize(cult, follower, initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}")
      @cult = cult
      @follower = follower
      @initiation_date = initiation_date
      @@all << self
      # binding.pry
    end

    def self.first_oath
      self.all.first.follower
      binding.pry
    end
end
