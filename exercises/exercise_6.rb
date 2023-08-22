require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 0}
end

# Create employees for @store1 (Burnaby)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 55)

# Create employees for @store2 (Richmond)
@store2.employees.create(first_name: "Alice", last_name: "Johnson", hourly_rate: 45)
@store2.employees.create(first_name: "Bob", last_name: "Brown", hourly_rate: 48)

# Create an example employee for @store1
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

puts @store1.employees