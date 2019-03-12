def menu
  system "cls"
  puts "Welcome to My Tournament Generator.
  Enter a selection:
  1. Enter teams (Will delete old list)
  2. List teams
  3. List matchups
  0. Exit
  _________________________________________________
  "
selection = gets.chomp.downcase
  case selection
  when "1", "enter teams", "enter"
      puts enter_teams
    when "2", "list teams", "teams"
    puts list_teams
  when "3", "list matchups", "matchups"
    puts matchups
  when "0", "exit"
  return
  end
end

def enter_teams
  @teams= {}
  system 'cls'
  entering_done = false
  @i = 1
  while entering_done == false
    puts "What is team ##{@i}?    When you are finished write 'done'"
    team = gets.chomp
  if team == "done" || team == ""
    @i -= 1
     return menu
   end
  new_team = Team.new(team, 0)
  teams.push new_teams
  @teams[@i] = new_team
    @i +=1
  end
end

def list_teams
  system "cls"
  if @teams == nil
    puts "You have to input your teams first." + "\n"+"press 'enter' to return to menu"
    gets.chomp
    return menu
  end
@teams.each do |key, index|
  puts "#{key}: #{index.name}"

  end
puts "
hit 'enter' to return to menu"
gets.chomp
return menu
end

def matchups
  bottom = @i
  top = 1
  rounds = @i / 2
  puts "well folks, looks like we have #{@i} teams."
  if @i % 2 == 0
    puts "lets get started"
    puts "there will be #{rounds} round(s)"
rounds.times do
  puts ""
  puts @teams[top].name
  puts "vs"
  puts @teams[bottom].name
top += 1
bottom -=1
    end
  elsif @i % 2 != 0
    puts "looks like someone is going to have to sit out"
    puts "there will be #{rounds} round(s)"
    puts "
    #{@teams[1]} gets a bye"
    top += 1
    rounds.times do
      puts ""
      puts @teams[top].name
      puts "vs"
      puts @teams[bottom].name
      top += 1
      bottom -=1
    end
  end
  puts "hit 'enter' to return to menu"
  gets.chomp
  return menu
end

class Team
      #  attr_accessor
  def initialize(name, rank)
    @name = name
    @rank = rank
  end
  def name
     @name
  end
  def rank
    @rank
  end
end



menu




@weights = [ 45, 35, 25, 15, 5]


def weightlifting_program
 puts "weightlifting program"
 weight_decider(get_input)
end

def get_input
 input_check = false
 until input_check == true
   puts "How much weight do you want to lift?"
   weight = gets.chomp.to_i
   if weight >= 45
     return weight
   else
     puts "weightbar weighs 45lbs. You must pick a weight at least this much!"
   end
 end
end

def weight_decider(user_input)
user_input -= 45
 @weights.each do |weight|
quantity = user_input / (weight * 2)
user_input -= (quantity * weight * 2)
puts "you can use #{quantity} of the #{weight} lbs weights "
 end
end

weightlifting_program
