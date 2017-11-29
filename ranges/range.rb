require 'awesome_print'

#ranges as sequences
(1..10).each do |x|
	ap "this is #{x}"
end

ap (1..10).to_a
#rejecting in a range

values = (1..100)

rejects = values.reject{|x| x%2==0}
# ap rejects


#ranges as conditions
#case
student_mark = 90

res = case student_mark

	when 0..30 then "Failed"
		when (31..40) then "Grade C"
			when(41..60) then"Grade B"
				when(61..80) then "Grade A"
					when (81..100) then "Perfecto"
					else "Invalid Score"

end

puts res


values02 = values.collect{|x| x*90 }

puts values02




#ranges as intervals
