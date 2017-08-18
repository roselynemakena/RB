require 'awesome_print'

def call_name(number)
	yield
	puts "#{number}"

end
def print_number(x)
	puts x
	yield "Next number is: "
end
call_name(6){puts "Yield number"}

puts "=================="

print_number(1){|no| puts "#{no}"}

#yield more than two numbers
def yielder(number)
	puts "_________"
	(1..number).each do |x|
		while x<5 do 
			
			puts x
			x=x+1
			
		end
	end
	yield
end

yielder(3){ puts "Outer YIELDER"}


