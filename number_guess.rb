def random_number(max)
  rand(max)
end

def ask_user_for_number(max)
  puts "Guess a number between 1 and #{max}"
  gets.chomp.to_i
end

def evaluate_number(number, max)
  if number > max
    puts "Your guess is too high"
  elsif number < max
    puts "Your guess is too low"
  else
    puts "You got it!"
  end
end

def play_game(max)
  number = random_number(max)
  loop do
    guess = ask_user_for_number(max)
    evaluate_number(guess, number)
    break if guess == number
  end
end


play_game(100)
