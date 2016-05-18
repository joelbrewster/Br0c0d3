# Daniel
# Daniel is a lackadaisical teenager. In conversation, his responses are very limited.

# He answers 'Sure.' if you ask him a question. He answers 'Whatever.' if you tell him something. He answers 'Woah, chill out!' if you yell at him (ALL CAPS). He says 'Fine. Be that way!' if you address him without actually saying anything.
puts "Say/Ask/whatever something to Dan..."
puts "Say 'bye' to leave."

input = ""
while input != "bye"
  input = gets.chomp
  if input.include? "?"
    puts "Sure."

  elsif input.include? "."
    puts "Whatever."

  elsif input =~ /[A-Z]/
    puts "Woah, chill out!"

  else
    puts "Fine. Be that way!"
  end
end

input_leet = ""
while input_leet != "bye"
  input_leet = gets.chomp.downcase
  reply = ""
  sentences = "Bro, #{reply}."
  sentences = input_leet.gsub(/[a]/, '4').gsub(/[e]/, '3').gsub(/[i]/, '1').gsub(/[o]/, '0').gsub(/[u]/, 'u').downcase
  # sentences.each {|x| 2 * x.upcase}
  # sentences.at(1).upcase
  puts sentences
end

i = 0
while i < string.length
  if i.even?
    string[i] = string[i].upcase
  end
  i = i.next
end

# Write code in ruby so that you can have an interactive conversation with Daniel. Make sure you include some testing in order to verify your code.

# Hints

# gets, get string is the opposite of puts put string.

# Notice that when you type "Something" and then hit enter, you get the string "Something\n"

# loop do
#   # talk to Daniel here
# end
# Extensions

# l33t sP34k

# Daniel, inspired by the 90s, is bringing back "l33t sP34k", and he'll teach you how to do it. Start any sentence with "Bro, ", and he'll translate the rest of it into l33t sP34k for you.

# In brief:

# Several vowels are always replaced with numbers: a = 4, e = 3, i = 1, o = 0
# Words that start with a consonant start with lower case
# Consonants after the first letter alternate upper and lower case, except the alternation starts over with lowercase after a digit (ex: sCh00l)
