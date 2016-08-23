# modify last one to remove non alpha chars
require 'pry'
def word_sizes(str)
	size = Hash.new(0)

	str.split(' ').each do |letter|
	    #binding.pry
		clean_word = letter.delete('^A-Za-z')
    size[clean_word.size] += 1
	end

	size
end





p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}