class DayBreaker::Quote

	attr_accessor :text, :url

	def self.today
	  doc = Nokogiri::HTML(open("https://www.brainyquote.com/quotes_of_the_day.html"))
	  quote_day = self.new	
	  quote_day.text = doc.search("img.p-qotd").attr("alt").text
	  quote_day.url = "https://www.brainyquote.com/quotes_of_the_day.html"
	  quote_day
	end
end

# def self.today
# 		self.scrape_fact		
# 	end

# 	def self.scrape_fact
# 		doc = Nokogiri::HTML(open("http://www.factslides.com/s-Fact-Of-The-Day"))
# 		fact = doc.css("li")[0].text 
		
# 	end