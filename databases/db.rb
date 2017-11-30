require 'active_record'
require 'dbi'
require 'yaml'
require 'mysql'

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

def connect_to_db
	db_con = Mysql.real_connect('localhost', 'cooking_user', 'password', 'cooking')

	begin
		yield db_con
		
	ensure
		db_con.close
		
	end
	
end

connect_to_db

