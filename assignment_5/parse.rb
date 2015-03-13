class Regexp1

	def parse_file

		puts "Enter file path name:"
		file_name=gets.chomp

		unless file_name=~/.*(.rb)/
			
			puts "Enter ruby file only..."
			return
		end

		f=File.open(file_name)
		unless f!=nil
			puts "not able to open the file"
		end
		global_var=0
		local_var=0
		class_var=0
		instance_var=0
		f.each do |line|
			if "#{line}"=~/\$\w*/
				global_var=global_var+1
			end
			if "#{line}"=~/@@\w*/
				class_var=class_var+1
			end
			if "#{line}"=~/@\w*/
				instance_var=instance_var+1
			end
		end
		print "\n\noutput:\nglobal_var:#{global_var}\n"
		puts "class_var:#{class_var}"
		puts "instance_var:#{instance_var}"

	end

end

reg_obj=Regexp1.new
reg_obj.parse_file