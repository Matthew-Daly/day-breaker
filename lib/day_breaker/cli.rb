#CLI Controller

class DayBreaker::CLI

	def call
		list_day_starters
		pick_your_poison
	end

	def list_day_starters
		puts "Good morning! Here are today's ponderers (is that even a word...anyway, here are some things to think about)."
		@word = DayBreaker::Word.today
		@quote = DayBreaker::Quote.today
		@fact = DayBreaker::Fact.today
		@number = DayBreaker::Number.today
		puts <<-DOC.gsub /^\s*/,''
		-
		Word of the day: #{@word.word} - #{@word.definition}
		-
		Quote of the day: #{@quote.text}
		-
		Fact of the day: #{@fact.fact}
		-
		Number of the day: it is #{@number.day} of the year. After today, there are #{@number.remaining}. 'Time is slipping slipping slipping into the future' ... get on with it!
		-
		DOC
	end

	def pick_your_poison
		puts "Would you like to know where I got this stuff? Type in the goodie (word, quote, fact, number) you would like to know more about, or exit if you've got things to do. If you would like to see the list again, type list."
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			case input 
			when "word"
				puts "#{@word.url}"
			when "quote"
				puts "#{@quote.url}" 
			when "fact"
				puts "#{@fact.url}" 
			when "number"
				puts "#{@number.url}" 
			when "list"
				list_day_starters
			when "exit"
				have_a_day
			else
				puts "Not sure what you want. Are you drunk again?! Jesus Christ, how many times this weeek is...Try again!"
			end
		end
	end

	def have_a_day
		puts "Goodbye. Have a day. What kind is completely up to you."
	end

end
		# Expected outcome
        # Word of the Day: bumbershoot - Informal: Often Facetious. an umbrella.
		# 	-
		# 	New York Times Quote of the Day: “I knew he was Mexican, but he’s been here so long, he’s just one of us.”
		# 	-
		# 	Fact of the Day:
		# 	What continent is Russia in?
		# 		The Asian part of Russia is known as Siberia. However, in terms of population, the situation is reversed: Roughly three out of four Russians live in the European part of the country and just one out of four live in the Asian part. Europe and Asia actually share a single landmass, which is known as Eurasia.
		# 	-
		# 	Number of the day: it is day 58 of the year. 'Time is slipping slipping slipping into the future' ... get on with it!