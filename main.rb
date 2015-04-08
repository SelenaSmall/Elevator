#!/usr/bin/ruby

##Pseudo elevator moving in two directions for an apartment building with 7 floors
#The elevator doesn't call the elevator, the floor within a building calls the elevator

class Floor		#has ability to call lift going up or lift going down

	@@no_of_floors=0

	def initialize(floor_number)
		@floor_number=floor_number
		@@no_of_floors +=1
	end

	attr_reader :floor_number

	def call_lift_going_up
		puts "Press 1 to call the lift\n"
		number = gets.chomp.to_i

		if number.to_i == 1
			puts "You have called the lift going up"
		else puts "FAIL"
		end
		#TODO: all floors can call lift going up (except the top floor)
	end

	def call_lift_going_down
		#TODO: #2 on user keyboard calls lift going down
		#TODO: all floors can call lift going down (except the bottom floor)
	end
end

class Elevator		##has ability to move up; move down; stop and open
	
	def initialize(current_location)
		@current_location=current_location
	end

	def move_up
	end

	def move_down
	end

	def stop_and_open
	end

	def stop_and_stay_closed
	end
	
	def move_efficiently
		#TODO: move down AND stop and open
		#TODO: ELSE move up AND stop and open
		#TODO: ELSE stop and stay closed
	end

end

floor1=Floor.new(1)
floor2=Floor.new(2)
floor3=Floor.new(3)

elevator=Elevator.new(1)

#puts "Elevators current location is on floor: #{floor1.floor_number}"
floor1.call_lift_going_up









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
