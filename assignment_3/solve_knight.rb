#returns true if given next position is available or not

def check_position_available(x,y,sol,n)

	if(x>=0 and y>=0 and x<n and y<n and sol[x][y]==-1)
		return true
	else 
		return false
	end

end


#returns no of steps available for given possible solution

def no_of_steps(x_pos,y_pos,sol,n)

	x_move=[ 1, 2,  2,  1, -1, -2, -2, -1]
	y_move=[2, 1, -1, -2, -2, -1,  1,  2]
	steps=0
	for iterator in 0...8

		next_x=x_pos+x_move[iterator]
		next_y=y_pos+y_move[iterator]
		if check_position_available(next_x,next_y,sol,n)==true
		
			steps=steps+1
	
		end
		
	end
	if steps>0
		return steps
	else
		steps=9
		return steps
	end

	

end

def display(sol,n)

        for iterator1 in 0...n
                for iterator2 in 0...n
                        print "\t#{sol[iterator1][iterator2]}"
                end
                        print "\n"
        end


end

#{Wondroff logic goes here} It initialize knight with given coordinates and checks next available position and update next position to which the furthe next steps are minimum

def solveKT(x_pos,y_pos,n)

	x_move=[ 1, 2,  2,  1, -1, -2, -2, -1]
        y_move=[2, 1, -1, -2, -2, -1,  1,  2]
	
	sol=Array.new(n){Array.new(n,-1)}
        sol[x_pos][y_pos]=0
	
	save_index=0
	move=n*n
	print "\nInitial chess board with initial position given\n"
	display(sol,n)
	
	for movei in 1...move
		min=9
		flag=0
		for iterator in 0...8
			next_x=x_pos+x_move[iterator]
			next_y=y_pos+y_move[iterator]
			if check_position_available(next_x,next_y,sol,n)==true
				
				steps=no_of_steps(next_x,next_y,sol,n)
				if(steps<=min)
					save_index=iterator
					min=steps
					flag=1
			
				end
			end
		end
		if flag==0
			print "\nsolution does not exist\n"
			return
		end
		curr_x=x_move[save_index]+x_pos
		curr_y=y_move[save_index]+y_pos
		sol[curr_x][curr_y]=movei
		
		x_pos=curr_x
		y_pos=curr_y

	end
	print"\nsolution:\n"
	display(sol,n)


	
	
end

	print"\nEnter value of grid size:"
	n=gets.chomp.to_i

	print"\nEnter Initial pos of knight"
	print"\nX_coord:"
	x=gets.chomp.to_i

	print"\nY_coord:"
	y=gets.chomp.to_i
	
	solveKT(x,y,n)
