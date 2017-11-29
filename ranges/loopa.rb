

a="makena"

a.each_char do |x|
	i=1
	b=""
	while i<14 do
		x.next
		i+=1
		puts x
	end

	b<<x

	puts b

end
