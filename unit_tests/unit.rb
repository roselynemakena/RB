

class Student
	attr_accessor :first_name, :last_name, :adm_no
	def initialize(first_name, last_name, adm_no)

		raise FiberError, "You cannot be admitted to this school with the admission no #{adm_no}: " unless adm_no > 2000 
		@first_name, @last_name, @adm_no = first_name, last_name, adm_no
		
	end

	def full_name

		first_name + ' ' + last_name
		
	end

end

makena  = Student.new("Rose", "Makena", 5342)

puts makena.first_name