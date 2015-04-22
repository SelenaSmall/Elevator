#!/usr/bin/ruby

class Elevator		##has ability to move up; move down; stop and open

	def initialize(number_of_levels)
		@number_of_levels=number_of_levels
		@des_floors_up=[]
		@des_floors_down=[]
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
		when a > @number_of_levels 
			puts "That level doesn't exist.\n"

		when a < 1
			puts "That level doesn't exist.\n"

		else puts "You are on an existing level.\n\n"
			return a
		end 
		end
	end

	def test_desired_floor
		loop do
		b = desired_floor.to_i

		case
		when b > @number_of_levels
			puts "That level doesn't exist.\n"

		when b < 1
			puts "That level doesn't exist.\n"

		else return b
		end 
		end
	end

	def compare_levels
	a = test_current_floor.to_i
	b = test_desired_floor.to_i

		case
		when a == b
			puts "You're already on that floor!\n"
		when a < b
			puts "Added to queue\n"
			@des_floors_up << b
		else puts "Wait!"
			#@des_floors_down << b
			return b
		end
	end

	def test_des_floors_up
		puts "Floors in the queue are: #{@des_floors_up}\n"
	end


end

elevator=Elevator.new(4)

#elevator.iterate_desired_floors
elevator.compare_levels
elevator.compare_levels
elevator.test_des_floors_up
#elevator.test_desired_floor