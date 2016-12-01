puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

print ">-"
door = $stdin.gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."

	print "> "
	bear = $stdin.gets.chomp

	if bear == "1"
		puts "The bear eats your face right off. Nice one mate"
	elsif bear == "2"
		puts "The bear eats your legs off. Solid choice"
	else
		puts "Well, doing %s is probably better. Bear runs away." % bear
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthulu's retina."
	puts "1. Blueberries."
	puts "2. Yellow Jackets!"
	puts "3. Understanding revolvers yelling melodies."

	print "> "
	insanity = $stdin.gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survies powered by a mind of jello. Top drawer!"
	else
		puts "The insanity rots your very eyeballs into a pool of much. Top drawer!"
	end

else 
	puts "You stumble around and then fall on an all-too-obvious knife and die. Smashing!"
end

