require 'rmagick'
# Thimbnailing images- using RMagick


image01 = Magick::Image.read('pics/leopard.jpeg').first

width,height = 100,100
resize_scale  = 0.02

thumbnail = image01.resize(resize_scale)

thumbnail.write('pics/leop_0.jpeg')


# Write copyright/ text to an image 

image02 = Magick::Image.read('pics/earth.jpeg').first

# thumb = image02.resize(resize_scale)
copy = Magick::Draw.new
text = "@mackennah"

copy.annotate(image02, 0,0,3,18, text) do
	self.font = 'Helvetica'
	self.pointsize = 40
	self.font_weight = Magick::BoldWeight
	self.fill = 'white'
	self.gravity = Magick::SouthEastGravity


end

image02.write('pics/earthcopy.jpeg')

# Converting one image type to another


