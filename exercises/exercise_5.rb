require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for the Company: $#{total_revenue}"

average_annual_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for All Stores: $#{average_annual_revenue}"

stores_with_1m_or_more = Store.where('annual_revenue >= ?', 1000000).size
puts "Number of Stores Generating $1M or More in Annual Sales: #{stores_with_1m_or_more}"