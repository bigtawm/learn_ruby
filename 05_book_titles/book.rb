class Book
	attr_reader :title

	def title=(new_title)
		new_array=[]
		small_words = ['the' , 'and' , 'in', 'of', 'a', 'an']
		new_title.split.each do |name|
			if new_array == []
				new_array.push(name.capitalize + " ")
			else
				if small_words.include?(name)
					new_array.push(name+ " ")
				else 
					new_array.push(name.capitalize + " ")
				end
			end
		end
			@title = new_array.join.strip
	end

end
