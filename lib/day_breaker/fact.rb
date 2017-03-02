class DayBreaker::Fact

	attr_accessor :question, :answer, :url

	def self.today
		fact_day = self.new
		fact_day.question = "What continent is Russia in?"
		fact_day.answer = "The Asian part of Russia is known as Siberia. However, in terms of population, the situation is reversed: Roughly three out of four Russians live in the European part of the country and just one out of four live in the Asian part. Europe and Asia actually share a single landmass, which is known as Eurasia."
		fact_day.url = "https://www.google.com.vn/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=fact+of+the+day&*"
		fact_day
	end
end
