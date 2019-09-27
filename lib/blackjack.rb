def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(card_total)
  valid_inputs = ["h", "s", "quit"]
  prompt_user
  user_input = get_user_input
  until valid_inputs.include?(user_input)
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    card_total += deal_card
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  welcome
  card_count = initial_round
  until card_count > 21
    card_count = hit?(card_count)
    display_card_total(card_count)
  end
  end_game(card_count)
end
    
