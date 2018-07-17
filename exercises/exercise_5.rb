require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@revenue_total = Store.sum(:annual_revenue)

# @number_of_stores = Store.count

@revenue_average = @revenue_total/Store.count

@over_mil = Store.where("annual_revenue >= 1000000").count(:annual_revenue)

puts @over_mil