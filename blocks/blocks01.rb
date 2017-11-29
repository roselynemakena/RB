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

#Passing blocks into methods - using &
def here_is_a_block(&supr)

supr	
end

here_is_a_block{puts "I'm a super block"}

#Using block given

def call_block(n)

	if block_given?
		n.times{yield}
	else
		puts "There is no block! you have provided!"
	end
	
end

call_block(3) {puts "Im a block"}

#passing arguments into code blocks

def a_great_method

	puts "Welcome to my method"
	value = yield("first time")

	puts "This is the :: #{value}"

	value = yield("second time")
	puts "Iteration number :: #{value}"

	value = yield("last time")
	puts "And finally :: #{value}"

end


a_great_method do |values|
	if values == "first time"
		value = 1

	elsif values == "second time"
		value = 2

	else

		value = 3
	end

end


#How Hash#find gets values using blocks

h = { 1 => "one", 2=>"two", 3=>"three",4=>"four",5=>"five"}

res = h.find{|k,v| k >2 }
puts res 

res2 = h.find_all
puts res2.each{|x| puts x}

class Hash
	def find_all
		new_hash = Hash.new

		each {|k,v| new_hash[k]< v if yield(k,v)}
		new_hash

		
	end
end

#Passing a blockas anargument to a method - using &

def pick_winners(min, max, limit)

	limit.times {yield min+rand(max+1) }

end


pick_winners(1,10,3) {|x| puts "The winners are #{x}"}
<<<<<<< HEAD
=======

#Complex data structures with blocks and closures

class Array 
	def iterate_both_sides
		findex = 0
		bindex = self.length-1
		puts bindex

		while findex <=bindex
			yield self[findex]
			findex +=1
			if findex <=bindex
				yield self[bindex]
				bindex -=1

			end

		end
		
	end
end

array = %w{"Once a there an man in forest. the living old was time upon"}

array.iterate_both_sides { |x| puts x}


b = array.collect {|x| x.capitalize}

puts b

>>>>>>> c7f6e13e01b28e6a4216a95f86cb5282fd9718b1
