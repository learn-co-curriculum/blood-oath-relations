require 'pry'

require_relative './cult'
require_relative './follower'
require_relative './bloodoath'

#Cult
# name, year, slogan, location, recruit_population
c1 = Cult.new("Flatiron", 2012, "love", "New York", 100)
c2 = Cult.new("Squirrels", 2010, "squishy", "Trees", 300)
c3 = Cult.new("Monsters", 1994, "Scream!", "Monster Ville", 2)
c4 = Cult.new("Red Panda", 2000, "Rawr!", "New York", 50)

# Follower
# name, life_motto, age
f1 = Follower.new("Joyce", "Live, Love, Laugh", 24)
f2 = Follower.new("Emily", "Learn, Love, Code", 24)
f3 = Follower.new("Vincent", "Pockey", 27)
f4 = Follower.new("Mike", "Ruby!", 33)

#Bloodoath
#(cult, follower, initiation_date)
bo1 = Bloodoath.new(c1, f2, "1997-6-12")
bo2 = Bloodoath.new(c2, f2, "2000-1-1")
bo3 = Bloodoath.new(c1, f1, "1999-12-13")
bo4 = Bloodoath.new(c3, f1, "2011-3-3")
bo5 = Bloodoath.new(c2, f3, "1997-5-20")
bo6 = Bloodoath.new(c3, f3, "1999-7-21")
bo7 = Bloodoath.new(c1, f4, "2017-5-8")
bo8 = Bloodoath.new(c3, f4, "2018-9-9")




binding.pry

puts "bye bye!"
