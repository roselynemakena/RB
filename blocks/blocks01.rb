=begin
This ia a section on ruby blocks, proc, lambda and Proc.new	
Blocks are pieces of ruby code in one block sorrounded by curly braces	
=end


def call_me_twice
	puts "I have been called"
	yield
end

call_me_twice {puts "i am from the block!"}

def times_n(n)
	lambda{|x| x*n}
	
end

#Creating a block and invoking it
#Using lambda

block_a = lambda{|x| puts x*x}

block_a.call(10)