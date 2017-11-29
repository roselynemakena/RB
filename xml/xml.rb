require 'rexml/document'

class XML

# This is a sample of a well-formed xml 
xml_sample = '<outer>
		<task>
		<entry>Go to the shop </entry>
		</task>

		<task>
		<entry>Dance </entry>
		</task>

		<task>
		<entry>Eat fruits </entry>

		</task>
</outer>
'
def self.hi
	puts "hi"
	
end
def self.check_xml(x)

	puts valid_xml?(x)
end
def self.valid_xml?(xml)
	begin
		REXML::Document.new(xml)
		true
	rescue REXML::ParseException
		false

	end		
end

hi
check_xml(xml_sample)

# Extracting data from a document tree using each_element
xml_ = REXML::Document.new(xml_sample)
xml_.root.each_element do |element|
		puts element
	end

end

