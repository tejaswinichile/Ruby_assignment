
def check_position(n,x,y,solution)

	if x>=0 and x<n and y>=0 and y<n and solution[x][y]==-1
		return true
	else
		return false
	end
	
end



def solveKT(n,x_coord,y_coord,move_position,solution_arr,x_move_arr,y_move_arr)

	iterator=0
	
	if move_position==n*n
		return true
	end
	
	while(iterator<8)
		
		next_x=x_coord+x_move_arr[iterator]
		next_y=y_coord+y_move_arr[iterator]
		
		if(check_position(n,next_x,next_y,solution_arr))		
		
			solution_arr[next_x][next_y]=move_position
			if(solveKT(n,next_x,next_y,move_position+1,solution_arr,x_move_arr,y_move_arr)==true)
				return true
			else
				solution_arr[next_x][next_y]=-1
			end

		end
		iterator=iterator+1
	end

	return false

end
	

def solve(n,pos_x,pos_y)

        solution=Array.new(n){Array.new(n,-1)}
	i=0,j=0
	 
        y_move=[2, 1, -1, -2, -2, -1,  1,  2]
        x_move=[ 1, 2,  2,  1, -1, -2, -2, -1]
        solution[pos_x][pos_y]=0
        print solution

        if solveKT(n,0,0,1,solution,x_move,y_move)==false

                print "do not exist"
                        return;
        else
	puts "Solution:"
		itrtr1=0
                while itrtr1<n
			itrtr2=0
			while itrtr2<n
				print "\t"
				print solution[itrtr1][itrtr2]
				itrtr2=itrtr2+1
			end
			print "\n"
			itrtr1=itrtr1+1
		end

		

        end


end

	
	
print "Enter value of n"	
n=gets.chomp.to_i

solve(n,0,0)



