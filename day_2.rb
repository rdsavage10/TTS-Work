=begin
5.times do
  print "I think I can "
end

count = 0
10.times do
  count *= count
  count += 1
  puts count
end

puts "Pick a number between 1-10"
num = gets.chomp.to_i
until num == 10
  num += 1
  puts num * 2
end

puts "Pick a number between 1-10"
  num2 = gets.chomp.to_i
until num2 == 0
  num2 -= 1
  puts num2 * 2
end

puts "pick a number "
num3 = gets.chomp.to_i
while num3 > 1
  puts num3
  num3 -= 1
end



puts "Enter your name"
arr = []
until arr.last == "Elliott"
  puts "Please enter your name"
  name = gets.chomp.downcase
  arr.push(name)
  puts arr
end


animalArray = %w(dog cat horse rat fish bug clam whale)
animalArray.each do |x|
  if x == "whale"
    puts "#{x} is my FAVORITE animal!"
  else
    puts "#{x} is ok i guess"
  end
end

questions = ["Name" "Age" "Hometown" "Favorite food"]
questions.each_with_index do |key, index|
you = {}
puts "Whats your #{key}"
you[key] = gets.chomp
puts input[key]

end

person = {"name"=> '', "age"=> '', "hometown"=> '', "favorite food"=> ''}
person.each_key do |key, value|
  puts "Please enter your #{key}"
  person[key] = gets.chomp
end
puts "This is #{person["name"]}, they are #{person["age"]}-years-old, from#{person["hometown"]}, and their favorite food is #{person["favorite"]}."
=end

puts "Give me a number"
arrnums = []
arrnums.push(gets.chomp.to_i)
4.times do
  puts "Give me another number"
  arrnums.push(gets.chomp.to_i)
end
puts arrnums
