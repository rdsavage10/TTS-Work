=begin
def whatOperation(operator, num1 , num2)
  if operator == "divide"
  divideOp(num1 , num2)
elsif operator == "add" || operator == "subtract" || operator == "multiply"
  rest_of_Op(operator, num1 , num2)
  else
    return "Operator error"
  end
end

def divideOp(num1 , num2)
puts "#{num1} / #{num2} = #{num1 / num2} with a remainder of #{num1 % num2}"
end

def rest_of_Op(operator, num1 , num2)
  case
  when operator == "add"
    puts "#{num1} + #{num2} = #{num1 + num2}"
  when operator == "subtract"
    puts "#{num1} - #{num2} = #{num1 - num2}"
  when operator == "multiply"
    puts "#{num1} * #{num2} = #{num1 * num2}"
  end
end

def get_numbers
  num1 = 0
  puts "Give me a number"
  num1 = gets.chomp.to_i
  until num1 != 0
    puts "That didn't work. try again please"
    num1 = gets.chomp.to_i
  end
  num2 = 0
  puts "Give me another number"
  num2 = gets.chomp.to_i
  until num2 != 0
  puts "That didn't work. try again please"
  num2 = gets.chomp.to_i
  end
return num1, num2
end

def get_operator
operator = ""
puts "Add/Subtract/Multiply/divide?"
operator = gets.chomp.downcase
  until operator == "add" || operator == "subtract" || operator == "multiply" || operator == "divide"
    puts "Hmmm.. try that one more time,"
    puts "Add/Subtract/Multiply/divide?"
    operator = gets.chomp.downcase
  end
  return operator
end

num1, num2 = get_numbers
operator = get_operator
whatOperation(operator, num1, num2)
=end
# hash.length
def question_input
  questions_done = false
  questions_hash = {}
  i = 1
  while questions_done == false
    puts "What is question ##{i}?    note: when you are finished write 'done' as your question"
    question = gets.chomp
  if question == "done" then return questions_hash end
    puts "what would you like the answer to be?"
    answer = gets.chomp
    questions_hash[question] = answer
    i +=1
  end
end

def quiz(hash)
  score = 0
  hash.each do |key, value|
    puts key
    answer = gets.chomp
    if answer == value
      puts "That is correct!"
      puts "score: #{score += 1}"
    else
      puts "Sorry but the correct answer was #{value}"
      puts "score: #{score -=1}"
    end
  end
  return   puts "Final Score: #{score}" 
end



#quiz()

puts "Alright, it's time to make a quiz for your friends!"

question_hash = question_input
puts "press 'enter' to start the game"
gets.chomp
system 'cls'
quiz(question_hash)
