require 'soap/rpc/driver'

def say_welcome

	driver = SOAP::RPC::Driver.new('http://localhost:8888/', 'urn:myserver')
	driver.add_method('welcome', 'first_name')

	driver.welcome("Makena")
	
end
say_welcome
