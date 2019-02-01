require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

the_sun = Cult.new("The Sun", 2005, "Praise The Sun", "Jersey", 300)
the_moon = Cult.new("The Moon", 2004, "Praise The Moon", "New York", 300)
the_sand = Cult.new("The Sand", 2008, "Praise The Sand", "Jersey", 300)
the_tree = Cult.new("The Tree", 2008, "Praise The Tree", "Conneticut", 300)

dan = Follower.new("Dan", 38, "Got any pizza", the_sun)
jim = Follower.new("Jim", 36, "Got any milk", the_sun)
bob = Follower.new("Bob", 65, "Got any sand", the_sand)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
