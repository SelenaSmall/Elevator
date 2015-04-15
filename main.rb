#!/usr/bin/ruby

require './elevator'
#require './floors'
#require './building'

#Run an elevator efficiently in an apartment building with 4 floors

elevator=Elevator.new(4)

puts "Welcome to the Lift!\n"
elevator.number_of_levels
#elevator.current_floor
#elevator.desired_floor
#elevator.test_current_floor
#elevator.test_desired_floor
elevator.compare_levels

