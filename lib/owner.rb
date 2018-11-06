class Owner
  
  @@owners = []
  attr_reader :species 
  attr_accessor :name, :pets  
  
  def initialize(species)
    @species = species 
    @@owners << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}

  end 
  
  def say_species
    return "I am a #{@species}."
  end 
  
  
  def buy_fish(name) 
    pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name) 
    pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name) 
    pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
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