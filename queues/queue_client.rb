require 'thread'

require 'drb'

names = Array.new

('ama'..'zaa').each{|x| names << x}

# puts names
# NAME = names[rand(26)] or raise "Usage: #{File.basename($0)} CLIENT_NAME"

# puts NAME

DRb.start_service
q = DRbObject.new_with_uri("druby://127.0.0.1:61676")

20.times do 
	q.enq('request' => ['Report','Process'][rand(2)], 'from' => names[rand(26)])
	sleep 1
end
