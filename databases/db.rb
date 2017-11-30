require 'active_record'
require 'dbi'
require 'yaml'

# Persisting data to a database using ruby - active record to mysql

def connect_to_db

	ActiveRecord::Base.establish_connection(
			:adapter => 'mysql',
			:host => 'localhost',
			username: 'cooking_user',
			password: 'password',
			database: 'cooking'
		)
	
end

puts 5.to_yaml
puts %w{Be a better storyteller girl}.to_yaml


# connect_to_db

