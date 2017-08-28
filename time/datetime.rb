require 'date'
#get today's time
t = Time.now()

puts t

##get number of seconds
puts t.sec

#get number of minutes
puts t.min

#get day
puts t.day

#get number of hours

puts t. hour

#get time zone
puts t.zone

#time local
puts Time.local(2017, 3,4)

#DateTime

puts DateTime.now.to_s