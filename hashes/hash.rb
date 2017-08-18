require 'awesome_print'


h = Hash.new{|h, key| h[key]="default value for #{key}"}

h["hi"]

ap h

h["0"]
h['1']

ap h.keys

ap h['0']

#should be true
ap h.has_key?('0')

hash01 = Hash.new{|h,k| h[k] = "default value for #{k}"}
numbers =Hash.new({1=>1,23=>23,4=>4,56=>56,5=>5,9=>9,89=>89,87=>87,894=>894,56=>56,435=>435,34=>34,2=>2,546=>546})
hash01["yay"]
hash01["naay"]

odd_numbers = [1,3,5,7,9,99,55,77,83]

#should be false
puts numbers.any?{|k,v| v%2==0}

#shoud be true
puts odd_numbers.all?{|i| i%2 !=0}

# puts h['first_name']
# ap h["ok"]

#should be true
puts odd_numbers.none?{|i| i.is_a?(String)}
#should be true

puts numbers.all?{|i| i.is_a?(String)}

#should be null - returns first block of true results
puts hash01.find{|h,k| k.is_a?(String)}



#Using procs



