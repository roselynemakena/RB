require 'awesome_print'
require 'bigdecimal'

#numbers - fixnum, bignum
#Inherits from numeric class - integer, complex etc

#Parsing number from string

no = "45452354"
puts no

puts no.to_i
puts no.oct #converts no to oct
puts no.hex #converts to #hex


#Handling exceptions during converstion

number = "13 : Okay not exactly a number"

puts number.to_i #reurns first occurence of number - 13

# puts Integer(number) #returns exception - `Integer': invalid value for Integer():

#signinficant digits play a role in the accuracy of numbers in BigDecimals
#precs is used to get the number of signinficant digits used, and total significant digits available

digit = BigDecimal("45.0000000")

puts digit.precs

#Rational numbers

puts Rational(2,3)

#seeding random numbers
puts "+++++++++++++++++++++++++++++"
srand(10)
puts rand(200)
puts rand(200)
puts rand(200)
puts rand(200)
puts rand(200)

#Logarithms
puts Math.log(10)
puts Math.log10(5)

puts "+++++++++++++++++++++++++++++"

a = [1,2,3,4,5,6,7,8,9,10]
ab = [1,2,3,4,5]

def create_arr(arr)

arr0  = arr.inject(0){|x, y| y+=x}/arr.size.to_f

end

puts create_arr(a)

#Finding median of numbers in an array

def get_median(arr ,sorted=false)
	return nil if arr.empty?
	sorted_array = arr.sort unless sorted
	mid_pos = arr.size/2

	median = arr.size % 2 == 1 ? sorted_array[mid_pos] : create_arr(sorted_array[mid_pos-1..mid_pos])


end
puts "getting median......."
puts get_median(a)
puts get_median(ab)

#Others - complex numbers, matrices, linear equations, degrees/radians, Roman numbers arithmetic, credi card checksums, prime numbers, 

