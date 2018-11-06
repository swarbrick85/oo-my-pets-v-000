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
    
    @@owners.size 
    return @@owners
  end 
  
  
  def self.reset_all 
     
  end 
end