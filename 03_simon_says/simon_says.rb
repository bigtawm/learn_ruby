#write your code here
def echo phrase
	return phrase
end

def shout phrase
	return phrase.upcase
end
def repeat (phrase,num=2)
	word = phrase + " "
	repeat_string = (word*num).strip
	return repeat_string
end

def start_of_word (word, num)
	return word[0...num]
end

def first_word word
	first = word.split
	return first[0]
end

def titleize word
	new_title =[]
	little_words = ['the', 'or', 'and', 'over']
	if word.split.length > 1
		word.split(" ").each do |name|
			if new_title== []
				new_title.push(name.capitalize + ' ')
			else
				new_title.push(titleize(name) + ' ')
			end
		end
		return new_title.join.to_s.strip
	end
	if !little_words.include?(word)
		new_title.push(word.capitalize)
	else
		new_title.push(word)
	end	
	return new_title.join
end
