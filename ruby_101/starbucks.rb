# Quiz - Starbucks
#Write a program that holds on to coffee orders.
class Coffee
  def initialize(type, sugar, size, name)
    @type = type
    @sugar = sugar
    @size = size
    @name = name
  end
# Write the .to_s method for this class so when you puts c1 you will have "Darryl's latte, medium, 2 sugars."
  def to_s
    return "#{@name}'s #{@type}, #{@size}, #{@sugar} sugars."
  end
end

c1 = Coffee.new('latte','2','medium','Darryl')
puts c1


# Extension
# Starbucks always gets names wrong, however. Make the name a bad misspelling of the actual name when you create the order.
# puts c1
# # => "Barrel's latte, medium, 2 sugars."
# When you make a new order, you have to wait for coffee. When you create the new order, there should be a waiting time of anywhere between 2-5 minutes. You should be able to check if it's ready by calling c1.ready? and have the program yell out the order and the misspelled name.

# You should be able to mark the coffee as collected with c1.collected = true.

# List all of the coffees not collected.

# Add options to the coffee order, eg shot of hazelnut, whipped cream, chocolate syrup.
