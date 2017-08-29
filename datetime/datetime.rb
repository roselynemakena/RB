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


#time year
puts t.year

#strptime - used to employ strftime statndards

puts "-----------------------"

d = Date.strptime('10/1/17, 12:13:54', '%y/%m/%d')
puts d
puts d.day
puts d.year

puts "---------WORD DATE---------------"

# Date.strptime('date_here', "format here")
# puts Date.strptime('2/2/2017, 12:04:23', '%A, %B, %Y').to_s

#iterating over dates
# (Date.new(2017,1,1)..Date.new(2017,5,5)).each{|x| puts x}








