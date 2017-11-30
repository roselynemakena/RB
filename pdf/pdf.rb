require 'pdf-writer'


class Certificate
		def initialize(achievement)
		@without_name = Marshal.dump(generate_pdf(achievement))
		end
		def award_to(name)
		pdf = Marshal.load(@without_name)
		pdf.move_pointer(-225)
		pdf.text("<i>#{name}</i>", :font_size => 64,
		:justification => :center)
		return pdf
		end
		private
					def generate_pdf(achievement)
					pdf = PDF::Writer.new( :orientation => :landscape )
					pdf.info.title = "Certificate of Achievement"
					draw_border(pdf, 10, 12, 16, 18)
					draw_text(pdf, achievement)
					return pdf
					end

					def draw_border(pdf, *px_pos)
					px_pos.each do |px|
					pdf.rectangle(px, px, pdf.page_width - (px * 2), pdf.page_height - (px * 2)).stroke
					end
					end

					def draw_text(pdf, achievement)
					pdf.select_font "Times-Roman"



					pdf.text("\n", :font_size => 52)
					pdf.text("Certificate of Achievement", :justification => :center)
					pdf.text("\n", :font_size => 18)
					pdf.text("hereby granted to\n", :justification => :center)
					pdf.text("\n\n", :font_size => 64)
					pdf.text("in recognition of achieving the status of", :font_size => 18, :justification => :center)
					pdf.text(achievement, :font_size => 64, :justification => :center)
					end
		end

certificate = Certificate.new('Ruby Hacker'); false
# ['Tricia Ball', 'Marty Wise', 'Dung Nguyen'].each do |name|
# certificate.award_to(name).save_as("#{name}.pdf")
# end