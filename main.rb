#!/usr/bin/ruby

##Pseudo elevator moving in two directions for an apartment building with 7 floors

class Elevator

	def initialize(call, move)
		@call=call
		@move=move
	end

	attr_reader :call, :move

end

elevator=Elevator.new("Called", "Moving")

puts "Lift called: #{elevator.call}"
puts "Lift moving: #{elevator.move}"



#Does lift exist?
#Where is lift currently?

#if lift has nothing to do, return to level 1

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

###this is all good in theory but its not until the user is actually 
###in the lift that they decide where they want to go to ;p 
