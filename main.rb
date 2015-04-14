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
		puts "There are #{levels} levels\n\n"
	end

	def id_which_level
		puts "Which level are you on?"
		current_floor = gets.chomp.to_i
	end

	def current_floor
		floor = id_which_level
	end

	def select_new_level
		puts "Select the floor you would like to go to\n"
		desired_floor = gets.chomp.to_i
	end

	def desired_floor
		new_level = select_new_level
	end

	def test_current_floor
		loop do
		a = current_floor.to_i

		case
		when a >= 7 
			puts "That level doesn't exist."

		when a <= 1
			puts "That level doesn't exist."

		else puts "You are on an existing level"
			return
		end 
		end
	end

	def test_desired_floor
		loop do
		b = desired_floor.to_i

		case
		when b >= 7
			puts "That level doesn't exist."

		when b <= 1
			puts "That level doesn't exist."

		else puts "Moving to an existing level."
			return
		end 
		end
	end

	def compare_levels
	a = current_floor.to_i
	b = desired_floor.to_i

		if a == b
			puts "You're already on that floor!"
		else return puts "Moving to new floor"
		end
	end

end

elevator=Elevator.new(7)

puts "Welcome to the Lift!\n"
elevator.number_of_levels
#elevator.id_which_level
#elevator.current_floor
#elevator.select_new_level
#elevator.desired_floor

elevator.test_current_floor
elevator.test_desired_floor
#elevator.compare_levels



#	def 
#		case current_floor
#		when 1
#			puts "You're on Ground Floor\n\n" 
#		when 2
#			puts "You're on Level 2\n\n" 
#		when 3
#			puts "You're on Level 3\n\n" 
#		when 4
#			puts "You're on Level 4\n\n" 
#		when 5
#			puts "You're on Level 5\n\n" 
#		when 6
#			puts "You're on Level 6\n\n" 
#		when 7
#			puts "You're on the Top Floor\n\n" 
#		return current_floor
#		else	
#			puts "That level doesn't exist\n\n"		
#		return current_floor
#		end
#	end

#		case desired_floor
#		when 1
#			puts "Lift has arrived at Ground Floor, Lift opening\n"		
#		when 2
#			puts "Lift has arrived at Level 2, Lift opening\n" 
#		when 3
#			puts "Lift has arrived at Level 3, Lift opening\n"
#		when 4
#			puts "Lift has arrived at Level 4, Lift opening\n"
#		when 5
#			puts "Lift has arrived at Level 5, Lift opening\n"
#		when 6
#			puts "Lift has arrived at Level 6, Lift opening\n"
#		when 7
#			puts "Lift has arrived at Top Floor, Lift opening\n"
#		return desired_floor
#		else 
#			puts "That level doesn't exist\n\n"
#		return desired_floor
#		end
# 		end

