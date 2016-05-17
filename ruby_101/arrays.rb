## Get into arrays
students = [nil, nil, nil, nil, nil]
students = Array.new 5

puts students


%w(Hello world)

arr = [1,2,3,4,5,6]

arr[-1]

arr[2,3] # get 3 more from element
arr[2..4] #get in range

arr[-2..-1] #go back

arr[0] = 9 #replace items


arr.at(5)
arr[5]


arr.last
arr[-1]

arr.take(3) #remove 3 from end
arr.drop(3) #remove 3 from start

arr.fetch(4) #throws an error if not found

arr.push(7)
arr << 8

arr.unshift 0 #add 0 to the start

arr.insert 2, 3 #first is index, then what to insert

arr.insert 5, "Hello", "How", "are", "you"

## Get out of arrays
arr.pop #removes last element and returns it

arr.shift #remove from start of array and returns it

arr.delete_at 4..6

arr.delete 2

arr.compact #removes undefined values out of the array

arr.uniq #remove dupes

##looping
arr = [1,2,3,4,5,6]

arr.each do |i|
  puts i
end

arr.each { |i| puts i}

arr.reverse_each

arr.reverse_each { |i| puts i}


arr = [1,2,3]

arr.map {|i| 2 * i}
arr.map! {|i| 2 * i}

#filter
arr.select { |i| i > 3} #return

arr.reject { |i| i > 3} #return not


#destructive
arr.delete_if {|i| i > 3}
arr.keep_if {|i| i > 3}

array1 = "Hello"
array2 = "world"

array1 | array2 #all
array1 & array2 #same in both


"wolf".object_id
:wolf.object_id
:wolf.to_s

hash = {}
hash = Hash.new

hash = {
  :name => "Joel",
  :username => "jnb"
}

hash[:name]
hash[:username]

hash[:wears_glasses] = true

hash.each { |x| x }
hash.each { |key, value| puts "#{key} is #{value}" }

hash.keys
hash.values


