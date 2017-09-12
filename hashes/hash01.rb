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

puts "------------------------"


ha = {:one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6 , :seven => 7, :eight => 8}
puts ha.sort

