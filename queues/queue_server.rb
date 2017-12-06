require 'drb'
require 'thread'


$SAFE = 1
def start_queue(url = 'druby://127.0.0.1:61676')

	q = Queue.new
	DRb.start_service(url, q)

	puts "listening for connection......"

	while job = q.deq
		yield job

	end
end

start_queue do |job|
	case job['request']
	when 'Report'
		puts "Reporting...#{job['from']}"

	when 'Process'
		puts "Processing...#{job['from']}"
		sleep(3)
		puts "Complete for #{job['from']} Done."
	end

end