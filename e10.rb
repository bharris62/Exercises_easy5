# Write a method that will take a short line of text, and print it 
# within a box.

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

def liner(lines)
	print '+'
	lines.times do |l|
		print '-'
	end
end

def spacer(space)
	print '|'
	space.times do |spaces|
		print ' '
	end
	puts '|'
end


def print_in_box(str)
	lines = str.length + 2
	liner(lines)
	puts '+'
	print "#{spacer(lines)}"
	puts "| #{str} |"
	print "#{spacer(lines)}"
	liner(lines)
	puts '+'
end



print_in_box('To boldly go where no one has gone before.')
print_in_box('I\'m me!' )
print_in_box('')