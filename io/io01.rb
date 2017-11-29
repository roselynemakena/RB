=begin
	
Ruby implemeentation of IO consists of different support layers

a) File objects  to read and write
b)class methods of files to manipulate without opening them
c)Standard libraries to walk directory trees
d) Other gems


Kernel#open - easiest way to open a file in ruby. - returns a file object with which one can open and write to. puts is used to write 
into the file. 'file.puts




=end

# Creating a file in ruby 

require 'fileutils'

FileUtils.touch('makena')
FileUtils.touch('file.txt')

#Opening a file in ruby

f = './file.txt'

puts File.file? f

open('file.txt', 'w') do |file|

	file.puts "Hi MAkena"
	file.puts "Next line"
	
end

# Creating a directory in ruby

dir = "my-awesome-directory"

if !File.exists? dir  
FileUtils.mkdir(dir)

end
puts File.exists? dir

puts File.blockdev? '/dev/hda1'

puts File.socket? '/var/run/mysqld/mysqld.sock'

puts File.exists? '/var/www/html/MpesaC2B/wsdl'

puts '-----------checking for symlink file----------------'

#Checking whether a file is a symlink to anither file

puts File.symlink? '/var/www/html/mula_ke'





