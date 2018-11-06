class Owner
  
  @@owners = []
  attr_reader :species 
  attr_accessor :name 
  
  def initialize(species)
    @species = species 
    @@owners << self 
  end 
  
  def say_species
    return "I am a #{@species}."
  end 
  
  def self.all 
    return @@owners
  end 
  
  def self.count 
    @@owners.size 
  end 
  
  def self.reset_all 
     @@owners.clear 
  end 
end