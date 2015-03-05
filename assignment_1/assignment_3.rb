
module Calc

	def interestCal(p,n,r)
		(p*n*r)/100
		
	end
	
	def scoreCal(m1,m2)
		(m1+m2)/2
	end
		

end

class Score

	include Calc
	def initialize(m1,m2)
		@sub1=m1
		@sub2=m2
	end
	

end

class Interest
	
	include Calc
	def initialize(p,n,r)	
		@payment=p
		@no_of_yrs=n
		@rate=r
	end
	def get_payment
		return @payment
	end
	def get_no_of_yrs
		return @no_of_yrs
	end
	def get_rate
		return @rate
	end
end


puts "In Interest"

puts "Enter P:"
p=gets.chomp.to_i
puts "Enter N:"
n=gets.chomp.to_i
puts "Enter R:"
r=gets.chomp.to_i

int=Interest.new(p,n,r)
int.get_payment
interest=int.interestCal(int.get_payment,int.get_no_of_yrs,int.get_rate)
puts "Simple Interest is:#{interest}"

puts "In Score"
puts "Enter marks for subject1 out of 100:"
m1=gets.chomp.to_i
puts "Enter marks for subject2 out of 100"
m2=gets.chomp.to_i

sc=Score.new(m1,m2);
score=sc.scoreCal(m1,m2)
puts "Student's Score is:#{score}%"
