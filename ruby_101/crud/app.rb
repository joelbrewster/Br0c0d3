require 'active_record'
require 'faker'
require 'sinatra'
require 'sinatra/reloader'


ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'test'
)
ActiveRecord::Base.logger = Logger.new(STDERR)

class Cat < ActiveRecord::Base

end

get '/' do
  cat = Cat.new
  cat.name = "Meow"
  cat.age = 20
  cat.evilness = 900
  cat.save
  return cat.inspect
end

get '/cat' do
  erb :cat
end

# cat = Cat.new
# cat.name = 'Bob'
# cat.age = 24
# cat.evilness = 9000
# cat.save

# - find
#   - return 1 or 0
# - where
#   - loop with .each
# - all
#   - loop with .each

# - order
# - count

# 100.times do
#   cat = Cat.new
#   cat.name = "#{Faker::Name.prefix} #{Faker::Name.first_name} #{Faker::Name.suffix}"
#   cat.age = Faker::Number.between(4, 20)
#   cat.evilness = Faker::Number.number 4
#   cat.save
# end

# puts Cat.find 15940

# Cat.all.each do |cat|
#   if cat.id == 15940
#     puts cat
#   end
# end

# puts Cat.count

# Cat.all.each do |cat|
#   puts cat.name
# end

# fast
# puts Cat.where(:id => [15940..15000]).count
# puts Cat.where['evilness < ?', 1500].count
# puts Cat.where['evilness < ?', evilness].count
# evilness = 5000
# puts Cat.where['evilness < 1500'].count.order[evilness: "DESC"].first.name

# puts most_evil.name
# puts most_evil.evilness

# Reassign evilness
# most_evil =  Cat.all.order(evilness: 'ASC').first
# most_evil.evilness = Faker::Number.number 4
# most_evil.save

# puts "#{most_evil.name} is the most evil cat - it has #{most_evil.evilness} evilness."


# Cat.all.each do |cat|
#   cat.evilness = Faker::Number.number 4
#   cat.save
# end


# Cat.find(915244).update(:evilness => Faker::Number.number (5))
# cat = Cat.find (1590).evilness
# cat = Faker::Number.number = 5
# cat.save
# Cat.all.update(:evilness => Faker::Number.number(5))

# Cats.destroy_all


