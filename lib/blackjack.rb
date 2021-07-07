def welcome
  puts "Welcome to the Blackjack Table"
end 

def deal_card
  rand(1..11)
end 

def display_card_total(total)
  puts "Your cards add up to #{total}"
  total 
end 

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end 

def get_user_input
  gets.strip
end 

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end 

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
end 

def invalid_command
  puts "Please enter a valid command"
end 

def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    return total
  elsif user_input == 'h'
    total += deal_card
    return total
  else 
    puts "Please enter a valid command"
    hit?(total)
  end 
end 
  
  

def runner 
  welcome
  total = initial_round
  until total > 21 do 
    total = hit?(total)
  end 
end_game(total)
display_card_total(total)
end 


    
  
  