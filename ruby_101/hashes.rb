# Array and Hash access
# A. Given the following data structure:

a = ["Anil", "Erik", "Jonathan"]
# How would you return the string "Erik"?
puts a[1]
# How would you add your name to the array?
puts a.insert -1, "Joel"
# B. Given the following data structure:

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# How would you return the string "One"?
puts h[1]
# How would you return the string "Two"?
puts h[:two]
# How would you return the number 2?
puts h["two"]
# How would you add {3 => "Three"} to the hash?
puts h[3] = "Three"
# How would you add {:four => 4} to the hash?
puts h[:four] = 4

# C. Given the following data structure:

is = {true => "It's true!", false => "It's false"}
# What is the return value of is[2 + 2 == 4]?
## 2 + false == 4

# What is the return value of is["Erik" == "Jonathan"]?
## true == true

# What is the return value of is[9 > 10]?
##9 > false

# What is the return value of is[0]?
##Is true?

# What is the return value of is["Erik"]?
##Is Eric true?
# D. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
# How would you access Jonathan's Twitter handle (i.e. the string "tronathan")?
puts users["Jonathan"][:twitter]
# How would you add the number 7 to Erik's favorite numbers?
puts users["Erik"][:favorite_numbers] << 7
# How would you add yourself to the users hash?
puts users["Joel"] = [:twitter => "butthead"]
# How would you return the array of Erik's favorite numbers?
puts users["Erik"][:favorite_numbers]
# How would you return the smallest of Erik's favorite numbers?
puts users["Erik"][:favorite_numbers].sort
# How would you return an array of Anil's favorite numbers that are also even?
puts users["Erik"][:favorite_numbers].select { |i| i.even?}
# How would you return an array of the favorite numbers common to all users?
puts "==="

all_numbers = Array.new
users.each do |key, value|
  all_numbers << value[:favorite_numbers]
end
puts users

# How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?

all_numbers.sort.uniq

