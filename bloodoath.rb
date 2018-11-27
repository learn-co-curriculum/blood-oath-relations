class Bloodoath

  attr_reader :cult, :follower
  attr_accessor :initiation_date

  @@all = []

  def self.all
    @@all
  end

  def initialize(cult, follower, initiation_date)
    @cult = cult
    @follower = follower
    @initiation_date = initiation_date

    @@all << self
  end

end # end of Bloodoath class
