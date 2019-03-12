
puts "What is your Score? (1-100)"
score = gets.chomp.to_i
  if score >= 90 && score <= 100
  puts "A"
  elsif score >= 80 && score < 90
    puts "B"
  elsif score >= 70 && score < 80
    puts "C"
  elsif score >= 60 && score < 70
    puts "D"
  elsif score < 60
    puts "F"
  else
    puts "hmmmmmm"
  end

  puts "Give me a number"
n1 = gets.chomp.to_i
puts "Give me another number"
n2 = gets.chomp.to_i

if n1 % n2 != 0
puts n1 % n2
puts "mod"
else
puts n1/n2
puts "div"
end



puts "Give me a word"
word = gets.chomp
puts word.split("")

word.split("").each_with_index do |x, i|
  if i + 1 == word.size
    puts word[x]
  else
    puts "#{x},"
  end
end


puts "Give me a word"
word = gets.chomp
vowels = ["a","e","i","o","u"]
if vowels.include?(word[0])
  puts "#{word}way"
else
consonant = word[0]
puts word = word.reverse.chop.reverse + consonant + "ay"
end





require "prime.rb"

Prime.first 5




puts "Lets play Rock, Paper, Scissors! You start."
pscore = 0
cscore = 0
until pscore == 3 || cscore == 3
  puts ""
  hand = {1 => "rock", 2 => "paper", 3 => "scissors"}
  srand()
  comp = rand(2) + 1

  puts "I picked #{hand[comp]}"
  player = gets.chomp.downcase

case

when (comp == 1 && player == "rock") || (comp == 2 && player == "paper") || (comp == 3 && player == "scissors")
  puts "Dang, we both had #{hand[comp]}"
  puts "lets play again!"
when (comp == 1 && player == "paper") || (comp == 2 && player == "scissors") ||  (comp == 3 && player == "rock")
  puts "You win this round.."
  pscore += 1
  puts  "#{pscore} your points    "  + "#{cscore} my points"
when (comp == 1 && player == "scissors") || (comp == 2 && player == "rock") || (comp == 3 && player == "paper")
  puts "HAHA! I won this round!"
  cscore += 1
  puts  "#{pscore} your points    "  + "#{cscore} my points"
end
end

if pscore == 3
 puts "You've bested me"
elsif cscore == 3
 puts "I win :)"
else "error"
end




i=0
100.times do
i+=1
case
when i % 3 == 0 && i % 5 == 0
  puts "FizzBuzz "
when i % 3 == 0
  puts "Fizz "
when i % 5 == 0
  puts "Buzz "
else
  puts i
end
end

srand()
arr = []
20.times do arr.push(rand(100)) end
arr = arr.sort
print arr
asum = arr.sum.to_f
puts "\n"
puts asum / arr.length



cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}

puts "Let's play a game of GUESS THAT CAPITAL!"
correct = 0
wrong = 0
cos_n_caps.each do |key, value|
  puts "What is the Capital of #{key}?"
  answer = gets.chomp.downcase
  case
  when value.downcase == "Washington, DC" && (answer == "washington dc") || (answer == "dc") || (answer == "d.c.")
    puts "Correct!"
    correct += 1
    puts "Correct: #{correct}" + "     Wrong: #{wrong}"
  when answer == value.downcase
      puts "Correct!"
      correct += 1
      puts "Correct: #{correct}" + "     Wrong: #{wrong}"
    else
      puts "ehehe That is not correct"
      wrong+= 1
      puts "Correct: #{correct}" + "     Wrong: #{wrong}"
  end
end

case
  when correct == cos_n_caps.length
    puts "amazing."
  when correct > wrong
    puts "YOU WIN?!?!"
  when wrong > correct
    puts "As expected, you fail."
  when correct == wrong
    puts "THIS ISNT POSSIBLE"
end
