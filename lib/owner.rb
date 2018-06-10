require 'pry'

class Owner

  attr_reader :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def pets
    Pet.all.select do |pet|
      pet.owner == self
    end
  end

  def cats
    self.pets.map do |pet|
      pet.cat
    end
  end

  def sick_cats
    self.cats.select do |cat|
      cat.sick == true
    end
  end

  def self.older_than?(age)
    self.all.select do |owner|
      owner.age > age
    end
  end

end
