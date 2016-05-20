# Quiz - Starbucks
# Write a program that holds on to coffee orders.

## Instance method
class Coffee
  # Add options to the coffee order, eg shot of hazelnut, whipped cream, chocolate syrup.
  def initialize(type, sugar, size, name, shot = "")
    @type = type
    @sugar = sugar
    @size = size
    @name = name
  end
  # Write the .to_s method for this class so when you puts c1 you will have "Darryl's latte, medium, 2 sugars."
  def to_s
    return "#{@name}'s #{@type}, #{@size}, #{@sugar} sugars."
  end
  # When you make a new order, you have to wait for coffee. When you create the new order, there should be a waiting time of anywhere between 2-5 minutes. You should be able to check if it's ready by calling c1.ready? and have the program yell out the order and the misspelled name.
  def ready
    @current_time = current_time
    @wait_time = wait_time
    current_time = Time.new
    wait_time = current_time.min + 2
    collected = false
    if current_time = wait_time
      return to_s
      # You should be able to mark the coffee as collected with c1.collected = true.
      collected = true
    end

  end
end

# Starbucks always gets names wrong, however. Make the name a bad misspelling of the actual name when you create the order.
# puts c1
# # => "Barrel's latte, medium, 2 sugars."

c1 = Coffee.new('latte','2','medium','Darryl')
c1 = Coffee.new('latte','2','medium','Barryl')
puts c1
# puts c1.collected?


# List all of the coffees not collected.

