
module View_product

	def list

		File.open('inventory.csv').each do |line|
	  		puts  "#{line}"
		end
		
	end
	def search_product

		print "Enter product name:"
		name=gets.chomp

		File.open('inventory.csv').each do |line|
	  		if /#{name}/.match("#{line}")
	  			puts "id name price stock company"
	  			puts "#{line}"
	  		end
		end
		
		


	end
end


class Shopkeeper

	include View_product
	require 'csv'

	def find_id

		f=CSV.open('inventory.csv','r')
		id=0
		f.each do |line|

			id=line[0].split(" ").first

		end
		return id

	end

	def add_product



		
		product_id=find_id.to_i+1


		print "product name:"
		product_name=gets.chomp
		print "Enter price:"
		price=gets.chomp.to_i
		print "stock_item:"
		stock_item=gets.chomp.to_i
		print "company name:"
		company=gets.chomp

		f=File.open("inventory.csv","a+")
		if f!=nil
			f.write "#{product_id} "
			f.write "#{product_name} "
			f.write "#{price} "
			f.write "#{stock_item} "
			f.write "#{company}\n"
		else
			print "unable to open"
		end
		print "Record added"

		f.close



	end

	def remove_product

		print "Enter product id:"
		id=gets.chomp.to_i
		
				
				output=CSV.open('output.csv','w')
				f=CSV.open('inventory.csv')
				
				f.each do |line|
					
					if line[0].split(" ").first.to_i==id
	  					next
	  				end
	  				output << line

				end
				File.delete('inventory.csv')
	  			File.rename('output.csv','inventory.csv')		
	  			f.close
	  			output.close
				puts "Record removed"


	end

	def edit_product

		print "Enter product id:"
		id=gets.chomp.to_i

				print "product name:"
				product_name=gets.chomp
				print "Enter price:"
				price=gets.chomp.to_i
				print "stock_item:"
				stock_item=gets.chomp.to_i
				print "company name:"
				company=gets.chomp
				
				output=CSV.open('output.csv','w')
				f=CSV.open('inventory.csv')
				
				f.each do |line|
					
					if line[0].split(" ").first.to_i==id
	  					line[0]="#{id} #{product_name} #{price} #{stock_item} #{company}"
	  				end
	  				output << line

				end
		File.delete('inventory.csv')
	  	File.rename('output.csv','inventory.csv')		
	  	f.close
	  	output.close
		puts "Record updated"

	end

	

	

	

end

class User

	include View_product
	require 'csv'
	def buy_product

		print "Enter product id:"
		id=gets.chomp.to_i
		print "Enter user name:"
		u_name=gets.chomp
		print "Credit card no:"
		cc_no=gets.chomp
		print "Credit cvv:"
		cvv=gets.chomp


		output=CSV.open('output.csv','w')
		f=CSV.open('inventory.csv')
		
		f.each do |line|
				
			if line[0].split(" ").first.to_i==id
	  			data=line[0].split(" ")
	  			id=data[0]
	  			name=data[1]
	  			price=data[2]
	  			if data[3]==0
	  				puts "product not available"
	  			else
	  				stock=data[3].to_i-1
	  			end

	  			company=data[4]
	  			line[0]="#{id} #{name} #{price} #{stock} #{company}"
	  			puts line[0]
	  		end
	  		output << line

		end
		File.delete('inventory.csv')
	  	File.rename('output.csv','inventory.csv')		
	  	f.close
	  	output.close


		f=File.open("order.txt","a+")
		f.write "#{id} "
		f.write "#{u_name} "
		f.write "#{cc_no} "
		f.write "#{cvv}\n "
		puts "order accepted"
		f.close

	end

end

while true

	print "press q if you want to quit or n to contibue:"
	if(gets.chomp=="q")
		break;
	end

	print "press s to use Shopkeeper credential or u for user\nEnter s or u:"
	if(gets.chomp=="s")

		s_obj=Shopkeeper.new
		print "Enter no of operation that you want to do:\n1.add_product\n2.remove_product\n3.edit_product"
		print "\n4.search_product\n5.View_product\nEnter no:"
		operation=gets.chomp.to_i
		if operation==1
			s_obj.add_product
		end
		if operation==2
			s_obj.remove_product
		end
		if operation==3
			s_obj.edit_product
		end
		if operation==4
			s_obj.search_product
		end
		if operation==5
			s_obj.list
		end
	

	else
		u_obj=User.new
		print "Enter no of operation that you want to do:\n1.search_product\n2.View_product\n3.buy_product\nEnter no:"
		operation=gets.chomp.to_i
		if operation==1
			u_obj.search_product			
		end	
		if operation==2
			u_obj.list
		end	
		if operation==3
			u_obj.buy_product
		end

	end

end


#Shopkeeper.new.add_product
#Shopkeeper.new.list
#Shopkeeper.new.search_product
#Shopkeeper.new.edit_product
#Shopkeeper.new.remove_product
#User.new.buy_product
