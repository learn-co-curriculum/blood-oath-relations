require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


foll1 = Followers.new("f1", 20, "LIVEYOURLIFE!")
foll2 = Followers.new("f2", 60, "still livin")
foll3 = Followers.new("f3", 35, "almost at midlife crisis")

cult1 = Cult.new("c1", "l1", "1990-01-03", "come join")
cult2 = Cult.new("c2", "l2", "1923-01-03", "wisdom")

bo1 = BloodOath.new(cult1, foll1, "2019-02-01")
bo2 = BloodOath.new(cult2, foll2, "2018-06-09")
bo3 = BloodOath.new(cult1, foll3, "2018-06-09")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
