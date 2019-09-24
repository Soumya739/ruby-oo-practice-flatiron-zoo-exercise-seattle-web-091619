require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require_relative "lib/location.rb"
require 'pry'


Woodland = Zoo.new("Woodland", "Seattle")
Reindeer = Zoo.new("Leavenworth_Reindeer", "Leavenworth")
Cougar = Zoo.new("Cougar_Mountain", "Seattle")

Lion = Animal.new("Lion", "350", "Sheru")
Raccon = Animal.new("Raccon", "100", "racky")
Goat1 = Animal.new("Goat", "180", "guddy")
Goat2 = Animal.new("Goat", "160", "guthi")
Deer = Animal.new("Deer", "170", "Dary")


l1 = Location.new(Lion, Woodland)
l2 = Location.new(Goat1, Cougar)
l3 = Location.new(Goat2, Cougar)
l4 = Location.new(Raccon, Woodland)
l5 = Location.new(Deer, Reindeer) 



binding.pry
puts "done"
