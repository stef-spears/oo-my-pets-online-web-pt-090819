class Owner
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
  end
  
  def say_species
    p "I am a #{@species}."
  end 
end