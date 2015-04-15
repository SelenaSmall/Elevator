#!/usr/bin/ruby

##Pseudo elevator moving in two directions for an apartment building with 7 floors
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

	def which_floor_is_calling_the_lift
#TODO: determine which floor is calling the lift
	end

	def call_lift
		puts "Press 1 to call lift going up, 2 to call lift going down\n"
		number = gets.chomp.to_i

		case number
		when 1
			puts "You have called the lift going up\n"
		when 2
			puts "You have called the lift going down\n"
		else puts "That's not an option\n" 
		end
#TODO: all floors can call lift going up (except the top floor)
#TODO: all floors can call lift going down (except the bottom floor)
	end
end

floor1=Floor.new(1)
floor2=Floor.new(2)
floor3=Floor.new(3)
floor4=Floor.new(4)

puts "Number of floors: #{floor1.total_number_of_floors}\n\n"
puts "You are on floor: #{floor3.floor_number}"
floor1.call_lift
