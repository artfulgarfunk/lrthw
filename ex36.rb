def sphinx
	puts "After brutally killing the old man, you encounter a strange creature"
	puts "...."
	puts "It's a sphinx!!"
	puts "The sphinx fixes you with a sly look, then speaks in a crytic tone:"
	puts "If you want to pass this point alive, you must answer my riddle"
	puts "What goes on four legs in the morning, on two legs at noon, and on three legs in the evening?"

	answer = gets.chomp

	# 1) man -- sphinx kills itself
	# 2) pokemon -- sphinx says fine you may pass, but I won't kill myself
	# 3) anything else -- the sphinx eats you!

	if answer == "man"
		puts "the sphinx decides to kill itself"
		dead("It's hardly a victory if charismatic megafauna die is it?")
	elsif answer.include?("pokemon")
		puts "Oedipus(you) replies:"
		puts "Probably one of those new Pokemon....There's like 600 of them"
		puts "I'd be surprised if one of the DOESN'T change its number of legs whilst evolving"
		puts 'The sphinx replies: "Fair enough, man. I can\'t reasonably expect you to remember all their names. You may pass"'
		dead("Oedipus and the Sphinx live happily every after")
	else 
		dead("The sphinx straight up kills you, to death")
	end
end


def dead(xxx)
	puts xxx, "That's the end of the adventure..."
	exit(0)
end

def thebes_road
	puts "you're on the road to Thebes"
	puts "a wild OLD MAN appears"
	puts "OLD MAN wants to fight!"
	puts "cue pokemon music...."
	puts "What do you do?"

	
	until ['kill him'].include?(user_input = gets.chomp)
		case user_input
			when 'punch'
				puts "that doesn't work..."
			when 'smack'
				puts "that doesn't work either..."
			else 
				puts "none of it works, try to KILL HIM"
			end 
		end
	puts "Wow, you didn't have to kill him!"

	sphinx
end


def where_wits
	wits = false
	while true
		print "Do you have your wits about you?"
		answer = gets.chomp
		if answer == "no"
			puts "go and get them then!"
		elsif answer == "yes" && wits
			thebes_road
		elsif answer == "yes" && !wits
			puts "no you don't... I need a WITTY RESPONSE first"
		elsif answer == "witty response"
			puts "That's better...I'll ask you one more time"
			wits = true
		else
			puts "not sensical mate"
			dead("go home to your pasture Oedipus")
		end
	end
end

def start
	puts "You're the unlucky and slightly thick Oedipus"
	puts "You hear that Thebes is great at this time of year...do you want to go?"

	user_input = gets.chomp

	if user_input == "no"
		dead ("that's no fun then")
	elsif user_input == "yes"
		where_wits
	else 
		puts dead("that doesn't even make sense...you may go")
	end
end

start




