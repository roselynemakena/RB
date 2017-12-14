require 'benchmark'


# used to compare libraries that do the same thing/ time

RANGE = (1..1000)
arr = RANGE.to_a

RANGE.to_a.each do |x|
	puts "This is #{x}"
end
