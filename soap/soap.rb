require 'logger'
require 'logger-application' unless defined?(Logger::Application)
require 'soap/rpc/standaloneServer'


=begin 

soap is a distant cousin of xml-rpc
It's used to send an xml representation of a request to a server and then gets a response of the same
- xml format

=end

class SOAPServer < SOAP::RPC::StandaloneServer
	def initialize(*args)
		super
		add_method(self, 'welcome', 'first_name')
		
	end

	def welcome(first_name)
		puts "Welcome #{first_name} to the platform!!"
		
	end

	#Setting up and running the server
end

server = SOAPServer.new('AwesomeServer', 'urn:myserver', 'localhost', 8888)
trap('INT'){server.shutdown}

server.start



