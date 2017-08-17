require 'awesome_print'


h = Hash.new{|h, key| h[key]="default value for #{key}"}

h["hi"]

ap h

h["0"]
h['1']

ap h.keys

ap h['0']

ap h.has_key?('0')

# puts h['first_name']
# ap h["ok"]

#Using procs



