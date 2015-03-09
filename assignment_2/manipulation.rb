class Manipulate

	def array_manipulation
		
		array=Array.new(5){|e=1|e=e+1}
		puts "array:"
		array.each_index{|e| print e,"-"}

		array_toappend=[5,6,7,8];
		puts "\nanother array:"
		array_toappend.each_index{|e| print e,"-"}
		
		array.concat(array_toappend)
		puts "\narray after concat:"
		array.each_index{|e| print e,"-"}

		array.delete_if{|value| value>7}
		puts "\narray after deletion:"
		array.each_index{|e| print e,"-"}

		array.delete_at(2)
		puts"\narray after deletion at index 2:"
		array.each{|e| print e,"-"}

		puts "\ncheck array empty or not"
		puts array.empty?
		
		puts "\nfetch 5th element"
		puts array.fetch(5)

		
	end
	
	def hash_manipulation
		
		h = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
		print "print key of value(200):"
		print h.key(200),"\n"

		print "length:"
		print h.length,"\n"

		print "fetch:"
		print h.fetch("a"),"\n"
		
		print "check key 'c' available or not:"
		print h.has_key?("c"),"\n"

		print "check value 400 available or not:"
		print h.has_key?(400),"\n"

	end
	
	def string_manipulation
		
		str1=String.new("string one")
		str2=String.new("string two")
		
		print str1,"\n"
		print str2,"\n"
		
		print "capitalize:\n"
		puts str1.capitalize
		
		print "upper Case: \n"
		puts str2.upcase
		
		print "concat: \n"
		puts str1.concat(str2)

		print "lower case:\n"
		puts str1.downcase
		
		

	end
	
end

Manipulate.new.array_manipulation
Manipulate.new.hash_manipulation
Manipulate.new.string_manipulation
