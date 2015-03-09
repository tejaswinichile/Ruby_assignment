
def process_input(input_line)

	array=input_line.split ""
	
	
	while true
		if(input_line.length==0 or input_line.length==1)
			break
		end
		i=1
		array=input_line.split ""
		array.delete_at(i)
		i=i+1
		
		while(i<=array.length)		
		
			array.delete_at(i)	
			i=i+1	
		end
		
	
		
		input_line=array.join
		print"String:"
		print input_line,"\n"
		
	end
		
	


end
print "please input the string:"
input_str=gets.chomp

process_input(input_str)
