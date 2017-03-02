class DayBreaker::Number

	attr_accessor :day, :year, :url

	def self.today
		number_day = self.new
		number_day.day = 58
		number_day.year = 2017
		number_day.url = "https://www.epochconverter.com/daynumbers"
		number_day
	end
end

