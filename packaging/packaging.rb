require 'rubygems'

#packaging a program 

puts Gem::cache.each do |name, gem|
	puts %{#{gem.name}}
end