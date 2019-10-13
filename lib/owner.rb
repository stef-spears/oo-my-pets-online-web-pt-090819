require 'pry'

class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end
  
  def say_species
    p "I am a #{@species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.length
  end
  
  def self.reset_all 
    @@all.clear
  end
  
  def my_cats
    Cat.all.select do |cat|
      binding.pry
    end
  end
  
end