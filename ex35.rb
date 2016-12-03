def gold_room
	puts "This room is full of gold. How much do you take?"

	print "> "
	choice = $stdin.gets.chomp

	if choice.to_i.to_s == choice
		how_much = choice.to_i
	else
		dead("Man, learn to type a number!!")
	end

	if how_much < 50
		puts "Nice, you ain't too greedy, you win!"
		exit(0)
	else
		dead("You greedy bastard!")
	end

end

def bear_room
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false

	while true
		print ">"
		choice = $stdin.gets.chomp
		if choice == "take honey"
			dead("The bear looks at you then slaps your face right off.")
		elsif choice == "taunt bear" && !bear_moved
			puts "The bear has moved from the door. You can go through it now."
			bear_moved = true
		elsif choice == "taunt bear" && bear_moved
			dead("The bear gets miffed and subsequently chews through your leg.")
		elsif choice == "open door" &&  bear_moved
			gold_room
		else
			puts "I have no clue what that means darling"
		end
	end
end

def cthulu_room
	puts "Here you see the great evil Cthulu."
	puts "He, it, she, whatever, stares at you and you go insane."
	puts "Do you flee for you life or eat your head? Tough choice."

	print "> "
	choice = $stdin.gets.chomp

	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("Well that was delicious")
	else
		cthulu_room
	end
end

def dead(why)
	puts why, "Great job!"
	exit(0)
end

def start 
	puts "You are in a dark room."
	puts "There is a door to your right and left."
	puts "Which one do you take?"

	print "> "
	choice = $stdin.gets.chomp

	if choice == "left"
		bear_room
	elsif choice == "right"
		cthulu_room
	else
		dead("You stumble around the room until you can stumble no longer, and DIE")
	end
end

start
