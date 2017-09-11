#sorted Array - instanciates sorted arrary elements

# a = SortedArray.new

a = ["ant", "Zebra","BAT", "CAT", "Warthog", "lizard", "fish", "Turtle", "rat"]
b = Array.new(["ant", "Zebra","BAT", "CAT", "Warthog", "lizard", "fish", "Turtle", "rat"])

puts a
puts "===================================="
puts b.sort
puts "===================================="


# Sorting by downcase

puts b.sort_by {|x| x.downcase}
puts "===================================="



#Suming array elements in an array

c = (1..10).to_a
sum = 0
c.each {|x| sum+=x}
puts sum

#OR
puts "===================================="

puts c.inject(0) {|sum,x| sum+x}

puts "===================================="
puts c.reduce(:+)

puts "===================================="
# Creating a hash from arrays - method 1


d = [["a","a"],["b","b"],["c","c"],["d","d"],["e","e"]]

h = Hash[*d.flatten]

puts h

puts "===================================="

# Creating a hash from arrays - method 2
j = d.inject({}) do |k,v| 

	k[v.first] = v.last
	k

end

puts j
puts "===================================="


# Extracting portions of an array
# Get first value
puts d[0][0]

puts "===================================="

# Gettign range of array elements

puts d[0..3]
puts "===================================="

puts d.slice(0..1)
puts "===================================="











