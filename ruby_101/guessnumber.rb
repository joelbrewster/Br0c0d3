# Title: Guess The Number
# Activity:

# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
# Specification:

# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.
# Extensions:

# Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"

puts "What is the random value?"
max_number = gets.chomp.to_i

random_number = Random.rand(max_number)

puts "Guess a number between 0 and #{max_number}."
user_guess = gets.chomp.to_i

while user_guess != random_number
  user_guess = gets.chomp.to_i
  if user_guess > random_number
    puts "Wrong!"
    puts "Lower!"
  else
    puts "Wrong!"
    puts "Higher!"
  end
end

puts "Correct!"



