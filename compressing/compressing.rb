require 'zlib'


file = "file/mymy.gz"

Zlib::GzipWriter.open(file) do |gzip|

	gzip << "This data will be written into a compressed file and storrrreeeeedd"
	gzip.close
	
end

puts open(file, 'rb') {|f| f.read(10)}