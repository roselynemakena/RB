require 'test-unit'
require 'breakpoint'
require './unit_tests/unit.rb'

class MTests < Test::Unit::TestCase
	def setup
		@student = Student.new("Roselyne", "Makena", 6234)
		
	end


	def test_first_name
		assert_equal("Roselyne", @student.first_name)
		puts "About to break.."
		breakpoint
	end

	def test_last_name
		assert_equal("Makena", @student.last_name)	
	end

	def test_adm_no
		assert_equal(6234, @student.adm_no)	

		
	end

end