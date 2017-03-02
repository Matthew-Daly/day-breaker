class DayBreaker::Word
	attr_accessor :name, :definition, :url

	def self.today
		word_day = self.new 
		word_day.name = "bumbershoot"
		word_day.definition = "Informal: Often Facetious. an umbrella."
		word_day.url = "http://www.dictionary.com/wordoftheday/2017/02/27/bumbershoot"
		word_day
	end
end




		# puts <<-DOC.gsub /^\s*/, ''
		# 	
		# 	-