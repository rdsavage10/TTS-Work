puts "dog or cat?"
animal = gets.chomp
if animal == "dog"
  puts "bark!"
elsif animal == "cat"
  puts "meow!"
else
  puts "im not sure what that means"
end

puts "What is your grade? (0-100)"
grade = gets.chomp.to_i
if grade < 60
  puts "YOU GET A SUPER F!"
elsif grade > 60
  puts "You Pass!"
else
  puts "im disappointed"
end

num1 = Random.new.rand(1..100)
puts "Pick a number between 1-100  #{num1}"
num2 = gets.chomp.to_i
if num2 == num1
  puts "wow"
elsif num2 < num1 + 10 && num2 > num1
  puts " just a bit too much"
elsif num2 > num1 - 10 && num2 < num1
  puts " just a bit short"
elsif num2 < 1 || num2 > 100
  puts "Cheater"
else
  puts "sucks to suck"
end
