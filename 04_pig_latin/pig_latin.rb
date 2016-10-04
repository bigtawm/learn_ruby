def translate word
	new_word = ''	
	if word.split(' ').length > 1
		word.split(' ').each do |word|
			new_word += "#{translate(word)} " 
		end
		return new_word.strip
	end
	consonant = []
	vowel = ['a','e','i','o','u']
		while(!vowel.include?(word[0]))
			if word[0..1] == 'qu'
				consonant.push('qu')
				word[0..1] = ''
			else
			consonant.push(word[0])
			word[0] = ''
			end
		end
		new_word = word + consonant.join + 'ay'
		return word + consonant.join.downcase + 'ay'
end
