
def compare var1,var2

	if var1==var2
		puts "\n both string are matches"
	else
		puts "\n both strings are not matches"
	end
end

puts "Enter first String:"
string1=gets.chomp

puts "Enter second String"
string2=gets.chomp

compare(string1,string2)

