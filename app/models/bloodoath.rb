class BloodOath
  attr_reader :initiation_date, :follower, :cult

  @@all = []

  def self.all
    @@all
  end

  def initialize(follower, cult)
    @initiation_date = "#{Time.now().month}/#{Time.now().day}/#{Time.now().year}"
    @follower = follower
    @cult = cult

    @@all << self
  end

  def self.first_oath
    self.all[0].follower
  end

end
