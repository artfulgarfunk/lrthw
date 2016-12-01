
def while_loop (i)
	while i < 6
		puts "At the top i is #{i}"
		numbers = []
		numbers.push(i)

		i += 1
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"


		puts "The numbers: "
		numbers.each {|num| puts num}
	end
end

while_loop(3)
