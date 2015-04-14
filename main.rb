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

	def current_floor
		puts "Which level are you on?"
		current_floor = gets.chomp.to_i
	end

	def desired_floor
		puts "Select the floor you would like to go to\n"
		desired_floor = gets.chomp.to_i
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

		else return
		end 
		end
	end

#TODO debug compare_levels now that tests are working.
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
#elevator.current_floor
#elevator.desired_floor
#elevator.test_current_floor
#elevator.test_desired_floor

elevator.compare_levels

