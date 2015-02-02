require "pry" 


def take_turn(player_name)
  player_score = []
  turn_total(q) = 0
  dice_roll = []
  q = 1

  player_name.each do |x|
    puts "\n--------------------------------------"
    puts "#{x} it is your turn. How many times would you like to roll?"
    roll_number = gets.chomp.to_i

  roll_number.times do
    roll = rand(1..6)
    dice_roll.push roll

    if roll == 1 
      turn_total(q) = 0
      puts "DOH! You rolled a 1! Your rolls were #{dice_roll} and you banked 0 points!"
      break
    else 
      turn_total(q) += roll
    end
  end
   player_score.push turn_total(q) 
   q += 1
    puts "You rolled #{dice_roll} and your total is: #{turn_total(q)}"
    puts "----------------------------------------"
    dice_roll.clear
  end
  # end_game(player_score)
  return player_score
end


# this was supposed to run the take_turn function <until>
# player(n)'s score was >= max score, but I couldn't
# figure out how to feed all the info into it... too many
# global variables? I also wasn't sure how to create a number
# player(n += 1)_score variables from the number of players.
# I feel like I tackled this entire homework incorrectly in terms
# of my structure of the code. I need to figure out how to 
# write less complicated functions and connect them.

 # def end_game player_score
#   max_score = 100  
#   total_score = []
#   z = 0
#   take_turn(player_name)
  
#   player_score.each do |x|
#     player_score(z) == new_score
#     total_score.push new_score
#     z += 1
      # total_score = game_total_score

    
# end

# end


def start_game
  puts "----------------------------------------"
  puts "Welcome to HOG!\n\nThe object of this game is to be the first player to obtain 100 points by rolling dice."
  puts "If you roll a 1 on ANY of your rolls, you will recieve 0 points for that turn."
  puts "----------------------------------------"
end

def player_info
  player_name = []
  game_info = []
  x = 1

  puts "How many players will be playing?\n"
    game_info = gets.chomp.to_i
    puts "\n\nYou've chosen #{game_info} players!\n\n"

  game_info.times do
    puts "\n\nPlease enter name of player #{x}!\n\n"
    x += 1
    name = gets.chomp.downcase.capitalize
    player_name.push name
    
  end
  take_turn(player_name)
  return player_name, game_info
end




start_game
player_info

