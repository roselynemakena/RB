class Book
	def initialize(pages, category)
		@pages, @cat = pages, category
		
	end

		def setPages(no_of_pages)
			@pages = no_of_pages
		end

		def getpages
			@pages	
		end

		def setCategory(category_name)
			@cat = category_name
			
		end
		def getCategory
			@cat
			
		end
		def to_s
			"Book: #{@pages}, #{@cat}"
			
		end
end

book = Book.new(200, "fiction")

puts book

book02 = Book.new(1,"other")
book02.setPages(30)
book02.setCategory("War")

book03 = Book.allocate
book03.setPages(340)


puts book03

puts book02