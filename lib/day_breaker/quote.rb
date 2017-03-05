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

