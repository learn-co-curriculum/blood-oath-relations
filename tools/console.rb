require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("cool cult", "Hawaii", 2019, "nice")
cult2 = Cult.new("uncool cult", "Hell", 100, "eh")
cult3 = Cult.new("medium cult", "Hawaii", 1899, "yea")
follower1 = Follower.new("prince", 5, "horses are cool")
follower2 = Follower.new("leonie", 10, "live life")
bloodoath1 = BloodOath.new(cult1, follower1)
bloodoath2 = BloodOath.new(cult1, follower2)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
