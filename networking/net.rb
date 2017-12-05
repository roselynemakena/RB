require 'amazon-search'


$AWS_KEY = '' # See below.
	def price_books(keyword)
	req = Amazon::Search::Request.new($AWS_KEY)
	req.keyword_search(keyword, 'books', Amazon::Search::LIGHT) do |product|
	newp = product.our_price || 'Not available'
	usedp = product.used_price || 'not available'
	puts "#{product.product_name}: #{newp} new, #{usedp} used."
	end

	price_books('java cookbook')
end

