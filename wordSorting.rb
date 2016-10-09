def word_sorting (phrase)
	words_array = phrase.split(/\W/)
	words_array = words_array.map(&:upcase).sort

	return words_array
end

puts word_sorting("Have a nice day.")
