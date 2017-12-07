require 'test-unit'

class MTests < Test::Unit::TestCase
	def setup
		@student = Student.new("Roselyne", "Makena", 234)
		
	end


	def test_first_name
		assert_equal("Roselyne", @student.first_name)
	end

	def test_last_name
		
	end

	def test_adm_no
		
	end

end