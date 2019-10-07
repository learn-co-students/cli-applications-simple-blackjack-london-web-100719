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
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  cards_add = deal_card() + deal_card()
  puts "Your cards add up to #{cards_add}"
  return cards_add
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_card_total)
  prompt_user()
  user_input = get_user_input()
  if user_input == 's'
    return current_card_total
  else
    if user_input == 'h'
      new_num = deal_card()
      current_card_total += new_num
      return current_card_total
    else
      if user_input != 'h' || 's'
      invalid_command()
      prompt_user()
      get_user_input()
      end
    end
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  num = initial_round()
  until num >= 21
    hit?(num)
    display_card_total(num)
end
end_game(num)
end
