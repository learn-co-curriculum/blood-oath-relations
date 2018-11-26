require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# initialize(name, age, life_motto)
f1 = Follower.new("Mahmoud", 20, "do it")
f2 = Follower.new("Thao", 15, "I'll")
f3 = Follower.new("Agamy", 20, "do it")
f4 = Follower.new("Pham", 15, "I'll")
# initialize(name, founding_year, location, slogan)
c1 = Cult.new("Arabs", 2005, "Cairo", "Pyramids are cool")
c2 = Cult.new("Vietnamese", 2015, "Saigon", "We love food")
c3 = Cult.new("American", 2017, "Saigon", "We love Music")


# initialize(initiation_date, follower, cult)
b1=BloodOath.new(f1, c1)
b2=BloodOath.new(f2, c2)
b3=BloodOath.new(f2, c1)
b4=BloodOath.new(f3, c2)
b5=BloodOath.new(f2, c3)
b6=BloodOath.new(f3, c1)













binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
