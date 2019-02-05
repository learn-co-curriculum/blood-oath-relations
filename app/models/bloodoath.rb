class BloodOath

  @@all = []

  attr_reader :cult, :follower

  def initialize(cult, follower, join_date)
    @cult = cult
    @follower = follower
    @join_date = join_date
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    @@all.first.follower
  end



end










































#   @@all = []
#
#   attr_accessor :cult, :follower
#
#   attr_reader :join_date
#
#   def initialize(cult, follower, join_date)
#     @cult = cult
#     @follower = follower
#     @join_date = join_date
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
# end
