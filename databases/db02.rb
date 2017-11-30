
require 'active_record'
require 'mysql2'

class Article <ActiveRecord::Base

	has_many :comments
	validates_presence_of :title
end
class Comment <ActiveRecord::Base

validates_presence_of :comment_title
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

article = Article.new(:title=>"Article super", :description => "In the end, it was well")
article.save
puts article.errors['title']

# comment = Comment.new(:comment_title => "Great article", :comment_body => "Well written, write again soon!")
if article.save
comment = {:comment_title => "new", :comment_body => "Well written, write again soon!"}

article.comments.create(comment)
		if article.comments.create
			puts "Article comment has been saved"

		else
			puts "could not be saved"

		end
else
	puts "not saved"

end
# puts article.comments.errors.on 'comment_title'
# puts article.comments.errors.on 'comment_body'


#data validation with active record

