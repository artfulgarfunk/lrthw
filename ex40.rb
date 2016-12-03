class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_the_lines()
		@lyrics.each {|line| puts line}
	end

	def sing_me_the_words #a bit confusing. lyrics is an ARRAY. so has to be converted to string before you can use .split method on it
		words = @lyrics.to_s.split(' ')
		words.each{|word| puts word}
	end

end

billy_talent = Song.new(["Reach into",
		"a pocket full of dreams",
		"oh now before",
		"they fall out of the seams"])

bulls_on_parade = Song.new(["oggy oggy oggy",
			"oi oi oi"])

billy_talent.sing_me_the_lines()

bulls_on_parade.sing_me_the_words()

