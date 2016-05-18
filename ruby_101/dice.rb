class Dice
  def self.roll
    return Random.rand 1..6
  end
end


rolls = { 1 => 0,
          2 => 0,
          3 => 0,
          4 => 0,
          5 => 0,
          6 => 0}

1000.times do
  my_roll = Dice.roll
  rolls[my_roll] = rolls[my_roll] + 1
end

puts rolls

# counter = 10000
# i = 0

# while (i < counter)
#   Dice.roll
#   i += 1
# end

# Roll 10,000
# each time increment the number

# Quiz - Dice
# Write a program to generate a standard dice roll.

# die = Dice.new
# die.roll
# # => 6
# It should give you a different result each time.

# die.roll
# # => 5
# die.roll
# # => 2
# When you pass in a number, it rolls the dice that many times, and returns you the array of rolled dice

# die.roll(3)
# # => [2,5,1]
# Extension

# Write a method called sum you can chain directly after die.roll(n), and will return you the dice and the total, like so:
# die.roll(5).sum
# # => [[6,6,5,5], 22]
# At first you will get a NoMethodError for a certain ruby class.

# How do you fix this?

# Why do you get a NoMethodError on that class instead of the class you wrote?

# Display die faces after rolling.
# ________
# | *  * |
# | *  * |
# ________
