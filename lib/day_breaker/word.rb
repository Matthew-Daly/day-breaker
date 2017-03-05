class DayBreaker::Word
  
  attr_accessor :word, :definition, :url

  def self.today
    doc = Nokogiri::HTML(open("http://www.dictionary.com/wordoftheday/"))
    word_day = self.new 
    word_day.word = doc.search("a.uploaded img").attr("alt").text
    word_day.definition = doc.search("div.definition-box li").text
    word_day.url = "http://www.dictionary.com/wordoftheday"
    word_day  
  end
end




		