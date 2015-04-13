#!/usr/bin/ruby

##Elevator In an apartment building with 7 floors

class Elevator		##has ability to move up; move down; stop and open
	
	def initialize(number_of_levels)
		@number_of_levels=number_of_levels
	end

	def levels
		@number_of_levels
	end

	def number_of_levels
		@level.to_i
		puts "There are #{levels} levels\n\n"
	end

	def id_which_level
#TODO: optimize. this could definitely be more efficient/effective
		puts "Which level are you on?"
		current_floor = gets.chomp.to_i

		case current_floor
		when 1
			puts "You're on Ground Floor\n\n" 

		when 2
			puts "You're on Level 2\n\n" 

		when 3
			puts "You're on Level 3\n\n" 

		when 4
			puts "You're on Level 4\n\n" 

		when 5
			puts "You're on Level 5\n\n" 

		when 6
			puts "You're on Level 6\n\n" 

		when 7
			puts "You're on the Top Floor\n\n" 

		else	
			puts "That level doesn't exist\n\n"
		
		return current_floor
		end
	end

	def select_new_level
		puts "Select the floor you would like to go to\n"
		desired_floor = gets.chomp.to_i

		current_floor = id_which_level
		if desired_floor = current_floor
			puts "You're already on that floor!"
		else end
#TODO: Test new level == (1-7), else fail
	end

	def go_to_new_level
		puts "Lift has arrived at level #{select_new_level}, Lift opening\n"
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

elevator=Elevator.new(7)

puts "Welcome to the Lift!\n"
elevator.number_of_levels
elevator.id_which_level
elevator.select_new_level
#elevator.move_lift
