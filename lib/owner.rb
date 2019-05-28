class Owner

  attr_accessor :species, :name, :pets

  OWNERS = []

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERs.clear
  end

  def self.count
    OWNERS.size
  end

  def initialize (species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog
    pets[:dog] << Dog.new(name)
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
