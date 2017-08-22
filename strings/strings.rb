require 'awesome_print'
require 'erb'

#substituting variables into strings

animal = "rabbit"
ap story = "Once upon a time, there was a #{animal} who lived in the forest. He would collect #{5+5} carrots each day."

#escaping the expression - using \

ap animal = "\#{animal}"


#here document
story = <<SOMESTORY

In the early days of #animal's life, he was lonely and had
no friend in the entire forest until one day he met a snail.
Immideialtely, they became friends and nothing kept them 
apart. %s
SOMESTORY

ap story

# Substrituting into an existing string

story_part_2 = "One day, the two were out hunting.."

story = story %story_part_2

ap story

template = ERB.new %q{<%= food%>}

food = "chips"

puts template.result

#reversing a string 

string = "This is a nice beautiful string"

puts string.reverse


#splitting words
array = string.split(/(\s+)/) #prints the whitespace as an arrray item
array = string.split(/\s+/) #excludes the whitespace array item 
ap array


#turn symbol to String
puts :ds.to_s
#symbols refer to the same object through out the ruby program


#strings with similar content refer to different objects
a = "string"
b = "string"

puts :name.object_id
puts :name.object_id

puts :name == :name
puts "makena" == "makena"

puts "makena".object_id
puts "makena".object_id