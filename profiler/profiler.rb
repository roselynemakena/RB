require 'profile'

# profiling is used to show where to optimize your application

$total = 0
def print_range

	('a'..'zz').each do |x|
		# puts x
		['a','b','c'].each do |s|
			if x.index(s)
				$total = $total+1
				break
			end
		end


	end
	puts $total
end

print_range