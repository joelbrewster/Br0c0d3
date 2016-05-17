# Calculator
# Explanation

# You will be building a calculator. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# Specification:

# A user should be given a menu of operations

def print_choices
  # A user should be able to enter numbers to perform the operation on
  puts "========================"
  puts "Input number 1 please:"
  @number_one = gets.chomp.to_i
  puts "Input number 2 please:"
  @number_two = gets.chomp.to_i
  puts ""
  puts "What do you want to do with the numbers?"
  # Calculator should be able to do basic arithmetic (+,-, *, /)
  puts "1 - addition"
  puts "2 - subtraction"
  puts "3 - division"
  puts "4 - multiplication"
  puts "5 - quit"
  gets.chomp.to_i
end

def addition
  @answer = @number_one + @number_two
  print_answer
end

def subtraction
  @answer = @number_one - @number_two
  print_answer
end

def division
  @answer = @number_one / @number_two
  print_answer
end

def multiplication
  @answer = @number_one * @number_two
  print_answer
end

def print_answer
  puts "The answer is:"
  puts "========="
  puts @answer
  puts "========="
end

# A user should be able to choose from the menu
while true
  type = print_choices
  case type
  when 1
    addition
  when 2
    subtraction
  when 3
    division
  when 4
    multiplication
  # This process should continue until the user selects a quit option from the menu
  when 5
    exit
  end
end


# Advanced Calculator functionality
# Calculator should be able to do basic arithmetic (exponents, square roots)
# Bonus
# Mortgage Calculator

# Calculate the monthly required payment given the other variables as input (look up the necessary variables)

# BMI Calculator

# Calculate the body mass index (BMI) for an individual, given their height and weight

# Trip Calculator

# Calculate a trip time and cost given inputs for

# distance
# miles per gallon
# price per gallon
# speed in miles per hour
