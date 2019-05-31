require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult_A = Cult.new("A", "location_A", 1000, "Hi")
cult_B = Cult.new("B", "location_B", 2000, "bye")
cult_C = Cult.new("C", "location_A", 2200, "C")

follower_A = Follower.new("A", 19, "yo")
follower_B = Follower.new("B", 13, "hey")
follower_C = Follower.new("C", 49, "peace")
follower_D = Follower.new("D", 34, "meow")
follower_E = Follower.new("E", 5, "hallo")
follower_F = Follower.new("Richard", 20, "rawr XD")

oath_A = BloodOath.new(follower_A, cult_A, "2000-12-12")
oath_B = BloodOath.new(follower_B, cult_B, "2050-08-12")
oath_C = BloodOath.new(follower_A, cult_C, "1950-03-02")
oath_R1 = BloodOath.new(follower_F, cult_A, "2019-05-21")
oath_R2 = BloodOath.new(follower_F, cult_B, "2019-05-24")
oath_R3 = BloodOath.new(follower_F, cult_C, "1920-05-29")
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
