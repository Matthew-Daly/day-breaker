class DayBreaker::Fact

  attr_accessor :fact, :url

  def self.today
    doc = Nokogiri::HTML(open("http://www.factslides.com/s-Fact-Of-The-Day"))
   	fact_day = self.new
   	fact_day.fact = doc.css("li")[0].text 
   	fact_day.url = "http://www.factslides.com/s-Fact-Of-The-Day"
    fact_day
  end
end
  








	