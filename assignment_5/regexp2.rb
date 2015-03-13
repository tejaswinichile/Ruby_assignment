class RegExp

	def find_ss

		puts "\nfind /ss/ in string........\n"
		puts "Enter string:"
		input=gets.chomp
		puts "\nchecking if string contain ss or not..."
		if input=~/ss/
			puts "\nyes the pattern exist into string"
		else
			puts "\npattern is not exist into string"
		end
	end

	def find_3rd_word

		puts "\nprints 3rd word of string until you press q to quit...\n"
		
		while true
			print "Enter string and enter q to exit:"
			input=gets.chomp
			if input=="q"
				break
			end
			if pattern=/\s*\w+\s\w+\s\w+/.match("#{input}")
				print "srd word of current string:"
				puts pattern[0].split(" ").last
			else
				puts "3rd word is not present..."
			end
		end

	end

	def find_replace
		puts "\nto Find replace string mrs.with mr.  ...........\n"
		print "Enter the string:"
		input=gets.chomp
		if pattern=/Mrs|mrs|MRS/.match("#{input}")
			new_string=input.sub("#{pattern}","mr")
			puts new_string
		end
	end

	def starts_with_St

		puts"\nfinds the string which starts_with_St..........\n"
		print "Enter String:"
		input=gets.chomp
		if /^St/.match("#{input}")
			puts "Yes the string starts_with_St"
		else
			puts "No"
		end

	end

	def end_with_art

		puts "\nfinds the string which end_with_art.....\n"
		print "Enter the string:"
		input=gets.chomp
		if /(.)*(art)/.match("#{input}")  #another approac to use $art as pattern
			puts "The string end with art"
		else
			puts "No string doesn't follow the pattern"
		end
		
	end

	def check_no_alpha_numeric

		puts "\ncheck the string contain no alpha numeric character....\n"
		print "Enter the string:"
		input=gets.chomp
		if /[\W\D]+/.match("#{input}")
			puts "string matches the pattern!!!"
		else
			puts "given string dont follow the pattern!!!"
		end
		
	end

	def check_white_spaces
		
		puts "\ncheck if the string contain white spaces or not...\n"
		print "input string:"
		input=gets.chomp
		if /\s/.match("#{input}")
			puts "String contain white spaces"
		else
			puts "string doesnt contain white spaces"
		end

	end

	def replace_non_alphanumeric_char

		puts "\nreplace all non alphanumeric character with '-'......\n"
		print "input the string:"
			input=gets.chomp
		pattern=/\W\D/.match(input)
	

			new_string=input.gsub("#{pattern}","-")
			puts new_string
		#	puts "String dont follow the pattern"
		

	end

end

regObj=RegExp.new
regObj.find_ss
regObj.find_3rd_word
regObj.find_replace
regObj.starts_with_St
regObj.end_with_art
regObj.check_white_spaces
regObj.check_no_alpha_numeric
regObj.replace_non_alphanumeric_char