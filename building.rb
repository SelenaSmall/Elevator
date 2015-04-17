class Building
##This class will co-ordinate all floors and elevator to move efficiently	
#Start with a small building, large building might need timers
#Start with a building that has 4 floors and a lift that goes from ground-4 and back again

	def lift_ascend
#TODO: lift move up stopping at all levels on the way which are also going up
#Iterate numbers 1-4 testing whether "floor" says they all want to go in the same diredction
#If yes, stop lift and open door
#If no, bypass to next number

#Call "Elevator" to ask which floor they want to go to 
#Test if that floor number is higher or lower than current level
#If higher, move it into the sequence
#If lower, push to the back of the queue and wait until lift descends (remember that passenger is still inside)

#Iterate numbers 1-4 testing whether "elevator" has said they want to stop there
#If yes, stop lift and open door
#If no, bypass to next number
	end

	def left_descend
#TODO lift move down stopping at all levels on the way which are also going down
	end

	def move_lift
		puts "Press 1 to move lift up, Press 2 to move lift down\n"
		answer = gets.chomp.to_i
			
			if answer == 1
				puts "Lift moving up\n"
			else if answer == 2
				puts "Lift moving down\n"
			else puts "Lift not moving\n"
			end
			end
	end

end

building=Building.new

building.move_lift

#Does lift exist?
#Where is lift currently?

#lift ascend to highest level called (not above level 7)
#stop at all levels which are higher than the current level AND that
#have called to go to a higher level. ALSO
#stop at all stops which are higher than the current level AND that
#have been called AND that are higher than the level which first 
#called them

#if no level (greater than the current level) has called to go to 
#a higher level then{

	
#lift descend to lowest level called (not below 1)
#stop at all levels which are lower than the current level AND that
#have called to go to a lower level. ALSO
#stop at all stops which are lower than the current level AND that 
#have been called AND that are lower than the level which first 
#called them}

###its not until the user is actually in the lift that they decide where they want to go to ;p 
