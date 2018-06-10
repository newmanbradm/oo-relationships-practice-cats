require 'pry'

class Cat

  attr_reader :name
  attr_accessor :sick

  @@all = []

  def initialize(name, sick = false)
    @name = name
    @sick = sick
    @@all << self
  end

  def self.all
    @@all
  end

  def pets
    Pet.all.select do |pet|
      pet.cat == self
    end
  end

  def owners
    self.pets.map do |pet|
      pet.owner.name
    end
  end

end
