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
  
  def cats
    Cat.all.select { |cat| cat.owner == self  }
  end
  
  def dogs
    Dog.all.select { |dog| dog.owner == self  }
  end
  
  def buy_cat
    new_cat = Cat.new(name, self)
    @@all << new_cat 
  end 
  
end