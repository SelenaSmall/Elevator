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
#TODO: optimize with cases & this could definitely be more efficient/effective
		puts "Which level are you on?"
		number = gets.chomp.to_i

		if number == 1 
			puts "Ground Floor\n\n" else 

		if number == 2
			puts "Level 2\n\n" else

		if number == 3
			puts "Level 3\n\n" else

		if number == 4
			puts "Level 4\n\n" else

		if number == 5
			puts "Level 5\n\n" else

		if number == 6
			puts "Level 6\n\n" else		

		if number == 7
			puts "Top Floor\n\n" else

			puts "That level doesn't exist\n\n"
			end
		end
		end
		end
		end
		end
		end
	end

#def youre_on_level
#	puts "You're on level #{id_which_level}\n\n"
#end

	def select_new_level
		puts "Select the floor you would like to go to\n"
		floor = gets.chomp.to_i
#TODO: Test new level == (1-7), else fail
	end

	def go_to_new_level
		puts puts "Lift has arrived at level #{select_new_level}, Lift opening\n"
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
elevator.go_to_new_level
#elevator.move_lift
