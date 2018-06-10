require 'pry'

class Pet

  attr_reader :owner, :cat

  @@all = []

  def initialize(owner, cat)
    @owner = owner
    @cat = cat
    @@all << self
  end

  def self.all
    @@all
  end

end
