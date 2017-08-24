require 'awesome_print'

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

puts Integer(number) #returns exception - `Integer': invalid value for Integer():




