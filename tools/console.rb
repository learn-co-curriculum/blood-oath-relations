require_relative '../config/environment.rb'
require_relative '../blood_oath'
require_relative '../cult'
require_relative '../follower'
load 'config/environment.rb'
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#name, location, founding_year, slogan, cult_population = 1
c1 = Cult.new("666", "LA", "1990-01-10", "death is great")
c2 = Cult.new("777", "NY", "1990-02-11", "super fun times")

#name, life_motto, age
f1 = Follower.new("Satya", "cults are cool", 24)
f2 = Follower.new("Josh", "cults are rad", 29)

#cult, follower, initiation_date
bo1 = BloodOath.new(c1, f1, "2018-11-26")
bo2 = BloodOath.new(c2, f1, "2018-11-23")




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
