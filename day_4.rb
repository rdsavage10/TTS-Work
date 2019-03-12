=begin
class Pet
  attr_accessor :species, :name, :sound

  def initialize(species, name, sound)
    @species = species
    @name = name
    @sound = sound
  end

  def species
    @species
  end

  def name
    @name
  end
  def sound
    @sound
  end
end

puts "what species is your animal?"
species = gets.chomp
puts "what's it's name?"
name  = gets.chomp
puts "what's it's sound?"
sound  = gets.chomp


my_pet = Pet.new(species,name,sound)
your_pet = Pet.new("Cat", "Simmon","Meow")
puts "\n" + "\n" + "\n"
print my_pet.species
puts "\n" + my_pet.name
puts my_pet.sound

class Product
  attr_acessor :name, :price, :quantity, :brand,

  def initialize(name,price,quantity,brand)
    @name = name
    @price = price
    @quantity = quantity
    @brand = brand
  end

  def

  end

end
=end
