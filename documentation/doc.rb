require 'rdoc/task'


RDoc::Task.new :rdoc_dev do |t|

	t.rdoc_files.include('README.rdoc', '../blocks/*.rb')
	t.rdoc_files.include('../blocks/*.rb')
	t.main = 'README'

	t.title = "This is my documentation"

end


