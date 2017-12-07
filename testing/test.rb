

$DEBUG = true

def add(a,b)
	$stderr.puts "Adding #{a} and #{b}" if $DEBUG
	puts "The answer is: #{a+b}"

	
end

def divide(a,b)

	$stderr.puts "Dividing #{a} and #{b}" if $DEBUG
	puts "The division answer is: #{a/b}"

	
end

add(rand(100), rand(100))
divide(rand(100), rand(100))