require 'awesome_print'

#aarays are elements of references of objects stored in an object in square brackets

arr = [4,5]

sum_diff_mult = [arr[0]+arr[1], arr[0]-arr[1], arr[0]*arr[1]]

ap sum_diff_mult

#writing string arrays shortcut using %w

arr02 = %w{"once upon a time there was a ca named pizza. She lived alone by the streets of Moscow."}

ap arr02

#<< adds values to arrays

a = Array.new
a << "cd"

ap a

#negative indices count from the end of the array

ap arr02[-3]

#size of array
puts arr02.size
puts arr02.length

#iterating over a array - with iterators/generators
puts "----------------ITERATING OVER AN ARRAY-----------------------"
b = arr02.each{|x| puts " [#{arr02.index}] #{x}"}


#copying an array to another after tranforming

c = arr02.each{|x| x.upcase}
ap c

#Array collect or Array#map - used to create another array after modifying the older array
a = ('a'..'z').to_a
puts a


b = a.collect{|x| puts x.upcase}

# puts b
#arra#step or array#range - used to create a range in an array

c = ('a'..'z').step(13) do |i|
	puts "Its #{i}"
end
#get 13th digit from alphabet

def get_13th(letter)

alpha = ((letter.to_s)..'z').step(13){|x| puts x}	
end

get_13th("v")
	


