the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through 
# a list in a more traditional style found in other languages
the_count.each do |x|;puts "This is count #{x}";end

# this is the same as above but apparently
# in a more Ruby style. this and the next are preferred
# syntax for Ruby loops
fruits.each do |fruit|; puts "A fruit of type: #{fruit}";end

# you can also go through mixed lists
# this does the same thing
# just different syntax
change.each {|i| puts "I got #{i}" }

# you can build lists too. start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0...6). each do |i|
	puts "adding #{i} to the list."
	# pushes the i variable on the *end* of the list
	elements.push(i)
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}
