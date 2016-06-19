class Owner

attr_accessor :name, :pets

attr_reader :species

@@all = []
@@count = 0

def initialize(name) 
@name = name 
@species = 'human'
@@all << self
@@count += 1
@pets = {fishes: [], dogs: [], cats: []}
end

def self.all
  @@all
end

def self.reset_all
  self.all.clear
end

def self.count
  self.all.count
end

def say_species
    "I am a #{@species}."
end

def pets
   @pets
end

def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
end

def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat 
end

def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = 'happy'
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = 'happy'
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = 'happy'
  end
end

def sell_pets
  @pets.each do |animal, array|
    array.each do |pet|
      pet.mood = 'nervous'
    end
    array.clear
  end
end

def list_pets
  fish = @pets[:fishes].count
  cat = @pets[:cats].count
  dog = @pets[:dogs].count
  "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
end

end