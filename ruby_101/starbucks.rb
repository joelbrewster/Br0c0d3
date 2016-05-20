# Quiz - Starbucks
# Write a program that holds on to coffee orders.

## Instance method
class Coffee
  # Add options to the coffee order, eg shot of hazelnut, whipped cream, chocolate syrup.
  def initialize(type, sugar, size, name, shot = "")
    @type = type
    @sugar = sugar
    @size = size
    # => "Barrel's latte, medium, 2 sugars."
    @name = name.gsub(/[aei]/, {"a" => "e", "e" => "i", "i" => "q" })
    @shot = shot
    @created_at = Time.now
    @brewing_time = Random.rand(120..300)
  end
  # Write the .to_s method for this class so when you puts c1 you will have "Darryl's latte, medium, 2 sugars."
  def to_s
    "#{@name}\'s #{@type}, #{@size}, #{@sugar} sugars."
  end
  # When you make a new order, you have to wait for coffee. When you create the new order, there should be a waiting time of anywhere between 2-5 minutes. You should be able to check if it's ready by calling c1.ready? and have the program yell out the order and the misspelled name.
  def ready?
    if Time.now > (@created_at + @brewing_time)
      "ORDER UP #{@name}.upcase"
    else
      time_left = (@created_at + @brewing_time) - Time.now
      "WAIT YOUR TURN! #{time_left.divmod(60)[0]}:#{time_left.divmod[60][1].round} SECONDS LEFT!"
    end
  end
end

# Starbucks always gets names wrong, however. Make the name a bad misspelling of the actual name when you create the order.
# puts c1

c1 = Coffee.new('latte','2','medium','Darryl')
puts c1
puts c1.ready?


# List all of the coffees not collected.

