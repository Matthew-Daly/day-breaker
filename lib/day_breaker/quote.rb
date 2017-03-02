class DayBreaker::Quote

	attr_accessor :text, :url


	def self.today
	  quote_day = self.new
	  quote_day.text = "I knew he was Mexican, but he's been here so long, he's just one of us."
	  quote_day.url = "https://www.nytimes.com/2017/02/27/pageoneplus/quotation-of-the-day-february-27-2017.html"
	  quote_day
	end
end

