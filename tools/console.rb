require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

yale = Cult.new("Yale", "New Haven", 1701, "For God, For Country, For Yale")
harvard = Cult.new("Harvard", "Mass", 1650, "Truth")
flatiron = Cult.new("Flatiron", "New Haven", 2019, "Live Laugh Code")

matt = Follower.new("Matt", 22, "Live, Laugh, Love")

max = Follower.new("Max", 19, "High")

prince = Follower.new("Prince", 1, "Afro")

yale.recruit_follower(matt, "2019-05-31")
yale.recruit_follower(max, "2019-05-30")
harvard.recruit_follower(max, "2019-05-30")

matt.join_cult(harvard, "2019-01-01")
prince.join_cult(yale, "2019-05-27")
max.join_cult(flatiron, "2019-05-01")

# matt.cults

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
