require 'pry'

class Owner
  
  attr_accessor :name, :pets, :fish
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @name = name
    @pets = {cats: [], dogs:[], fishes:[]}
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count 
    self.all.length 
  end 
  
  def self.reset_all
    self.all.clear
  end 
  
  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog 
  end 

  def walk_dogs 
    pets[:dogs][0].mood = ("happy") 
  end 
  
  def play_with_cats 
    pets[:cats][0].mood = ("happy")
  end 
  
  def feed_fish 
    pets[:fishes][0].mood = ("happy")
  end 
  
  def sell_pets 
    pets.each do |pet, arr|
      arr.each do |animal|
        animal.mood = ("nervous")
      end
    end 
    
    pets.clear
  end 
  
  def list_pets 
    puts "I have #{pets[:fishes].count} fishes, #{pets[:"
  end 
  
end