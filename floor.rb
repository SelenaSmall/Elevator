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

#	def call_lift
#		puts "Press 1 to call lift going up, 2 to call lift going down\n"
#		number = gets.chomp.to_i

#		case number
#		when 1
#			call_lift_going_up.to_i
#		when 2
#			call_lift_going_down.to_i
#		else puts "That's not an option\n" 
#		end
#	end

	def call_lift_going_up
		puts "Press 1 to call lift going up, 2 to call lift going down\n"
		number = gets.chomp.to_i
		
		if number == 1
		puts "You have called the lift going up\n"
		end
	end

	def test_if_top_floor
		a = @floor_number
		b = @@no_of_floors
		
		if a == b
		puts "Cannot go up, already on top floor\n"

		else puts "Do you want to go up or down?\n"
		end 
	end 

	def call_lift_going_down
		puts "Press 1 to call lift going up, 2 to call lift going down\n"
		number = gets.chomp.to_i

		if number == 2
		puts "You have called the lift going down\n"
		end
	end

	def test_if_ground_floor
		a = @floor_number
		b = 1
		
		if a == b
		puts "Cannot go down, already on ground floor\n"

		else puts "Do you want to go up or down?\n"
		end 
		#TODO: (ground floor cannot go down)
#		if floor1.call_lift_going_down  
#			puts "Cannot go down, already on ground floor\n"
#		end
	end	
end

floor1=Floor.new(1)
floor2=Floor.new(2)
floor3=Floor.new(3)
floor4=Floor.new(4)

puts "Number of floors: #{floor1.total_number_of_floors}\n\n"
puts "You are on floor: #{floor3.floor_number}"
#floor1.call_lift_going_up
#floor1.call_lift_going_down
floor3.test_if_ground_floor
