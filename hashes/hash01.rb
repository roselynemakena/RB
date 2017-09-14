require 'awesome_print'
# new hash
h = Hash.new
puts h

puts "------------------------"

# New hash
k = {}
puts k

puts "------------------------"

k = { "a":"1", "b":"2"}
puts k

puts k[:a]


puts "----------KEYS--------------"
puts k.keys

puts "--------VALUES----------------"
puts k.values



puts "---------TO ARRAY---------------"
puts k.to_a[0]

puts "------------------------"

=begin
This is a multiline comment
=end

puts "------------------------"


puts "------------------------"


puts "------------------------"


<<-EOF 
This is a here DOC
The defining difference between an array and a hash is ordering. An array cannot contain spacing and starts from
zero. A hash does not care for the ordering.
-Hash lookups take longer than array lookups
-Arrays are more precise than arrays, the challenge is knowing which element is in which index.
-A hash has no natural ordering thus cannot be sorted
-

EOF

puts "------------------------"


# Ordering an array vs hash
a = [1,4,2,3,5]
puts a.sort

puts "--------SORTING HASH----------------"


ha = {:one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6 , :seven => 7, :eight => 8}
puts ha.sort

=begin
Each time a string is created, an object is created for it. But a symbpl points to the same object in memory.

=end

puts 'name'.object_id
puts 'name'.object_id
puts 'name'.object_id


puts "---------SYMBOLS---------------"


puts :name.object_id
puts :name.object_id
puts :name.object_id

# Creating a hash with a default key values
# default valuue
alright = Hash.new("default")

puts alright["ok"]
puts "------------------------"


# Return default for string key, otherwise return not string

h = {"one"=>1, "two"=>2, 3=>3, 4=>4}

# h.each {}

puts "------------------------"


#create a hash with default key depending on the value - if the value is string->string, else "other"

hasher = Hash.new{|h, k| (k.respond_to? :to_str) ? "string" : "other"}

puts hasher[1]

#word count string into a hash
puts "------------Counting words in a hash------------"


string_hash = "Once upon a time in a time where grass was greem. Time would tell why it was like that."

counted_hash = Hash.new(0)

string_hash.split(/\W+/).each {|word| counted_hash[word.downcase] +=1 }

puts counted_hash

puts "-----------Adding values to hash-------------"

h["one"] = "one replaced"

puts h

puts "-----------keys in hash are flattened and cannot be edited-------------"

key = "superkey"

h[key] = "Super Value"

puts h

puts "--------Iterating through hash----------------"

h.each_pair {|k,v| puts"#{k} maps to #{v}"}



