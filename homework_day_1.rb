
=begin
puts "What is your favorite color of Crayola crayon?"
crayola = gets.chomp
puts crayola.reverse.upcase! + "!"



puts "What is your mood for today?"
mood = gets.chomp
puts mood.length
puts mood + " meow"



puts "Give me a number"
num1 = gets.chomp.to_i
puts "ok, now give me another"
num2 = gets.chomp.to_f
puts "Sum: #{num1 + num2}"
puts "Difference #{num1 - num2}"
puts "Product #{num1 * num2}"
puts "Quotient #{num1 / num2}"



puts "Write a sentence for me."
sentence = gets.chomp
puts "weird sentence.. what's your favorite word in it?"
word = gets.chomp
puts "your word begins at #{sentence.index(word)}"


puts "Dang dude, how much was dinner?"
cost = gets.chomp.to_i
cost.dig(2)
puts cost



puts "How many years old are you?"
age = gets.chomp.to_i
days = age * 365.25
puts "your Earth age is #{age * 31557600} seconds"
puts "#{days} Earth days"
puts " "
puts "#{days / 58.646} Sidereal days on Mercury"
puts "#{days / 175.97} Solar days on Mercury"
puts "#{days / 87.969} Years on Mercury"
puts " "
puts "#{days / 243.025} Sidereal days on Venus"
puts "#{days / 117} Solar days on Venus"
puts "#{days /  224.701 } Years on Venus"
puts "#{days / 1.025957} Sidereal days on Mars"
puts "#{days / 1.02748843} Solar days on Mars"
puts "#{days / 686.971} Years on Mars"
puts "#{days / 0.410069444} S1 Shortest Latitude days on Jupiter"
puts "#{days / 0.413664352} S2 Average of all Latitude days on Jupiter"
puts "#{days / 0.405902778} S3 Magnetic days on Jupiter"
puts "#{age / 11.8618} Years on Jupiter"
puts "#{days / 0.4263888888888889} S1 shortest days on Saturn"
puts "#{days / 0.4433} S2 Average days on Saturn"
puts "#{days / 0.444} S3 (radio emissions internal rotation rate) days on Saturn"
puts "#{days / 0.7184} Sidereal days and years on Uranus"
puts "#{84 / age} Solar days on Uranus"
puts "#{days / 0.6713} Sidereal days on Neptune"
puts "#{165 / age} Years on Neptune"

puts "Time for a Mad-lib! please give me a noun"
noun1 = gets.chomp
puts "A name?"
name = gets.chomp
puts "An Object?"
object = gets.chomp
puts "An adjective?"
adjective  = gets.chomp
puts "A pronoun?"
pronoun  = gets.chomp
puts "A geological Feature?"
geo  = gets.chomp
puts "A number?"
num  = gets.chomp
puts "A preposition?"
preposition  = gets.chomp
puts "A verb?"
verb  = gets.chomp

puts "Once upon a time there was a #{noun1}. This #{noun1} was named #{name}. #{name} decided #{preposition} go for a #{verb}."
puts  "while #{name} was #{adjective} #{verb}ing, #{pronoun} saw a #{geo} with #{num} #{object}s on it. AMAZING! "
