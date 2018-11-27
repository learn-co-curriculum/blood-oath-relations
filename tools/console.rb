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
c2 = Cult.new("777", "LA", "1990-02-12", "super fun times")
c3 = Cult.new("888", "LA", "1990-02-13", "yay")
c4 = Cult.new("999", "LA", "1990-02-14", "super")
c5 = Cult.new("111", "NY", "1990-02-15", "super times")
c6 = Cult.new("000", "NY", "1991-02-15", "super duper")

#name, life_motto, age
f1 = Follower.new("Satya", "cults are cool", 24)
f2 = Follower.new("Josh", "cults are rad", 29)
f3 = Follower.new("Bob", "cults are bad", 29)
f4 = Follower.new("Dave", "cults are mad", 29)
f5 = Follower.new("Mike", "cults are sad", 29)
f6 = Follower.new("Jim", "cults!", 29)
f7 = Follower.new("Simon", "rad!", 29)
f8 = Follower.new("Sally", "what's a motto with you?", 29)
f9 = Follower.new("Jane", "I like cults", 29)
f10 = Follower.new("Anne", "cults are OK", 29)
f11 = Follower.new("Dan", "cults are the best", 29)
f12 = Follower.new("Susan", "cults are fine", 29)
f13 = Follower.new("Tom", "meh", 29)

#cult, follower, initiation_date
bo1 = BloodOath.new(c1, f1, "2018-11-26")
bo2 = BloodOath.new(c1, f2, "2018-11-23")
bo3 = BloodOath.new(c2, f2, "2018-11-23")
bo4 = BloodOath.new(c1, f3, "2018-11-23")
bo5 = BloodOath.new(c2, f3, "2018-11-23")
bo6 = BloodOath.new(c3, f3, "2018-11-23")
bo7 = BloodOath.new(c1, f4, "2018-11-23")
bo8 = BloodOath.new(c2, f4, "2018-11-23")
bo9 = BloodOath.new(c3, f4, "2018-11-23")
bo10 = BloodOath.new(c4, f4, "2018-11-23")
bo11 = BloodOath.new(c1, f5, "2018-11-23")
bo12 = BloodOath.new(c2, f5, "2018-11-23")
bo13 = BloodOath.new(c3, f5, "2018-11-23")
bo14 = BloodOath.new(c4, f5, "2018-11-23")
bo15 = BloodOath.new(c5, f5, "2018-11-23")
bo16 = BloodOath.new(c1, f6, "2018-11-23")
bo17 = BloodOath.new(c2, f6, "2018-11-23")
bo18 = BloodOath.new(c3, f6, "2018-11-23")
bo19 = BloodOath.new(c4, f6, "2018-11-23")
bo20 = BloodOath.new(c5, f6, "2018-11-23")
bo20 = BloodOath.new(c6, f6, "2018-11-23")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
