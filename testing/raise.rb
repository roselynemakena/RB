
$r =false
def errors
	puts "Before the RAISE"
	raise "Okay, I have been raised" if $r
	puts "After the RAISE"
	
end

errors

a=2
b=0
def code_it(code)
	begin
		eval(code)
	rescue Exception => e
		puts "Cannot do that! - #{e}"
		puts "fixing it.."
		code_it("12/2")
		# retry
	end
end

def divide_it(a,b)
	begin
		puts a/b
	rescue Exception => e
		puts "Cannot do that! - #{e}"
		puts "fixing it.."
		b=1
		retry
	end
end

divide_it(a,b)