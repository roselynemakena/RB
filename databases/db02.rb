
require 'active_record'
require 'mysql2'

class Article <ActiveRecord::Base

	has_many :comments

end
class Comment <ActiveRecord::Base

belongs_to :article

end
# connecting to mysql via active record

def connect_to_db

	ActiveRecord::Base.establish_connection(
			:adapter => 'mysql2',
			:host => 'localhost',
			username: 'root',
			password: 'root',
			database: 'cooking'
		)
	
end

connect_to_db

article = Article.new(:title=>"First article", :description => "I once had a dream, that all the people in the world")
article.save

# comment = Comment.new(:comment_title => "Great article", :comment_body => "Well written, write again soon!")
comment = {:comment_title => "Great article", :comment_body => "Well written, write again soon!"}
article.comments.create(comment)