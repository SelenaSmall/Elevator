#!/usr/bin/ruby

require './floor'

class Building
##This class will co-ordinate all floors and elevator to move efficiently	
#Start with a small building, large building might need timers
#Start with a building that has 4 floors and a lift that goes from ground-4 and back again

	attr_accessor :call_lift

	def lift_ascend
#TODO: lift move up stopping at all levels on the way which are also going up
	#puts "1 = go up, 2 = go down, 3 = don't move\n" #@floor.test_which_floor
	#num = gets.chomp.to_i
#		if num == 1
#			lift_has_arrived	
#			
#			puts "which floor do you want to go to?\n" #@elevator.compare_levels
#			num2 = gets.chomp.to_i
#			if num2 >= 3 #larger than current floor but <= @total_number_of_floors
#				puts "going up"
#			else puts "you will have to wait"
#
#			end
		a = @floor.call_lift
		if a == 1
			puts "you're on floor 1"
	end
#TODO: Iterate array of numbers stored in "floor.store_floor_number" says they all want to go in the same diredction
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

	def lift_has_arrived
		puts "Stop Lift, Open the Door"
	end

end
#Later, we can store the floors wanting to move in an array which continually
#loops to update the order in which the lift will stop at to collect/drop off 
#passengers making it as efficient as possible with an integrated timer.
building=Building.new

building.lift_ascend

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
