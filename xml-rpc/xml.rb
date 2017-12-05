#xmlrpc4r is found in ruby's standard library


require 'xmlrpc/client'


def reach_web_service
	begin
		server = XMLRPC::Client.new2('http://betty.userland.com/RPC2')
		state = server.call('examples.getStateName', 15)
		puts state


		
	rescue XMLRPC::FaultException => e
		puts "there's an ERROR:: #{e.faultCode}"
	end
end

reach_web_service
