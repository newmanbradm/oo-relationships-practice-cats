require_relative './owner.rb'
require_relative './cat.rb'
require_relative './pet.rb'

brad = Owner.new("Brad", 25)
jp = Owner.new("JP", 29)

mia = Cat.new("Mia")
shey = Cat.new("Shey")
hudson = Cat.new("Hudson")
phoenix = Cat.new("Phoenix")
greyson = Cat.new("Greyson")

Pet.new(brad, phoenix)
Pet.new(jp, phoenix)
Pet.new(brad, hudson)
Pet.new(jp, greyson)
Pet.new(brad, shey)
Pet.new(jp, shey)
Pet.new(brad, mia)
Pet.new(jp, mia)

binding.pry
