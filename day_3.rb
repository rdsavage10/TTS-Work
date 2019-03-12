=begin
def == function

def lb_to_kg(a)
dif = a / 2.2
puts dif
end

lb_to_kg(20)


def reverser (word)
  reverse = []
  arr = word.split("")
  arr.each do |x|
    reverse.insert(0,x)
  end
return reverse.join()
end

puts "Give me a word"
word = gets.chomp
reverser(word)

arr = %w(dont stop me now cus im havin a good time)
puts arr_hash(arr)

def arr_hash(arr)
  hash = {}
  arr.each_with_index do |word, index|
    hash[index] = word
  end
    return hash
end

puts math_fun()
def math_fun ()
  puts "Give me a number"
  num1 = gets.chomp.to_i
  puts "Now give me another number"
  num1 = gets.chomp.to_i

  while num1 != 0 || num2 != 0 || num1 != 0 || num2 != 0
    if num1 == 0 || num1 % 1 != 0
      puts "Try that first number again"
      num1 = gets.chomp.to_i
    elsif  num2 == 0 || num2 % 1 != 0
      puts "Try that second number again"
      num1 = gets.chomp.to_i
    else
      puts error
    end
answer = num1 / num2
return "#{num1} / #{num2} = #{answer}"
end
=end

puts "fuck"*20
puts "press 'enter' to start the game"
gets.chomp
system 'cls'
