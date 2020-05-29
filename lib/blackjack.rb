def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card()
  card2 = deal_card()
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(card_total)
  # code hit? here
  prompt_user()
  answer = get_user_input()
  if answer == 'h'
    card_total += deal_card()
  elsif answer != 'h' && answer != 's'
    invalid_command()
    prompt_user()
    answer = get_user_input()
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  total = initial_round()
  if total < 21
    display_card_total(total)
    total = hit?(total)
  end
  end_game(total)
end
