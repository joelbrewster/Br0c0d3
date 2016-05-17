require "pry"
# Create a variable named days_of_the_week as an array of the following:
# Monday
# Tuesday
# Wednesday
# Thursday
# Friday
# Saturday
# Sunday
# days_of_the_week = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
days_of_the_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
binding.pry

# 2. My calendar says the first day is Sunday...
# Remove Sunday from the last postion and move it to the first position. Use array methods.
sunday = days_of_the_week.pop(1)
days_of_the_week.insert(0, sunday).compact

# 3. Create a new array of the days of the week:
days_of_the_week = Array.new
# The first inner array should be the weekdays
weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
# The second inner array should be the weekend days
weekends = ["Saturday", "Sunday"]
# All arrays in days_of_the_week array
days_of_the_week.push(weekdays).push(weekends)

# 5. Sort the remaining days alphabetically
puts days_of_the_week.sort_by {|x| x.downcase}
days_of_the_week = dotw


