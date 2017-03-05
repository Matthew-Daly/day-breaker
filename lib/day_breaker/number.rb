class DayBreaker::Number

	attr_accessor :day, :remaining, :url

	def self.today
		doc = Nokogiri::HTML(open("https://www.epochconverter.com/daynumbers"))
		number_day = self.new
		number_day.day = doc.search("div#contentcolumn div.highlightbox h3").text
		number_day.remaining = doc.search("div#contentcolumn p b").text
		number_day.url = "https://www.epochconverter.com/daynumbers	"
		number_day
	end
end

