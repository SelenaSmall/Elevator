#!/usr/bin/ruby

#The elevator doesn't call the elevator, the floor within a building calls the elevator

class Floor		#has ability to call lift going up or lift going down

	attr_reader :floor_number

	@@no_of_floors=0
	@@store_floor_number={}

	def initialize(floor_number)
		@floor_number=floor_number
		@@no_of_floors +=1
		@@store_floor_number[@floor_number] ||= 0		
		@@store_floor_number[@floor_number] += 1
	end

	def total_number_of_floors
		@@no_of_floors
	end

	def your_floor
		puts "You're on floor #{@floor_number}"
	end
	
	def test_which_floor
		your_floor

		a = @floor_number
		b = @@no_of_floors
		c = 1
		
		case
		when a == c
		puts "Cannot go down, already on ground floor\n"
		puts "Press 1 to call lift going up\n"
			call_lift_going_up

		when a == b
		puts "Cannot go up, already on top floor\n"
		puts "Press 2 to call lift going down\n"
			call_lift_going_down

		else 
		puts "Do you want to go up or down?\n"
		puts "Press 1 to call lift going up, 2 to call lift going down\n"
			call_lift_up_or_down
			return a
		end 
	end 

#TODO: How can i optimise call_lift without calling it twice..
	def call_lift
		number = gets.chomp.to_i
	end

	def call_lift_up_or_down
		a = call_lift

		case a
		when 1
			puts "You have called the lift going up\n"
		when 2
			puts "You have called the lift going down\n"

		else puts "That's not an option\n" 
		return end
	end

	def call_lift_going_up
		a = call_lift

		if a == 1
		puts "You have called the lift going up\n"
		else puts "That's not an option\n"
			return a
		end
	end

	def call_lift_going_down
		a = call_lift

		if a == 2
		puts "You have called the lift going down\n"
		else puts "That's not an option\n" 
			return 
		end
	end

end

floor1=Floor.new(1)
floor2=Floor.new(2)
floor3=Floor.new(3)
floor4=Floor.new(4)

puts "Number of floors: #{floor1.total_number_of_floors}\n\n"
#floor2.call_lift_going_up
#floor2.call_lift_going_down
#floor2.your_floor
floor2.test_which_floor
