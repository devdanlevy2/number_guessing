def generate_number
  return rand(1..100)
end



puts "hello, I am a computer, lets play a game."
puts "can you guess my number (between 1 and 100 in 5 or less guesses?)"


previous_guesses = []
computer_number = generate_number.to_i
5.times do
  user_guess = gets.chomp.to_i
  if user_guess == computer_number
    puts "great job!"
    exit
  elsif previous_guesses.include?(user_guess)
    puts "are you seriously guessing the same number twice?"
  elsif user_guess < computer_number
    puts "low, guess again"
  else user_guess > computer_number
    puts "high, guess again"
  end
previous_guesses << user_guess
end
puts "sorry, nice try"
