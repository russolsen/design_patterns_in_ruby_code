#!/usr/bin/env ruby

require '../example'

example %Q{
require 'rubygems'
require 'runt'

mondays = Runt::DIWeek.new(Runt::Monday)
wednesdays = Runt::DIWeek.new(Runt::Wednesday)
fridays = Runt::DIWeek.new(Runt::Friday)

puts "check xmas"
puts mondays.include?(Date.new(2015,12,25))
puts wednesdays.include?(Date.new(2015,12,25))
puts fridays.include?(Date.new(2015,12,25))

nine_to_twelve = Runt::REDay.new(9,0,12,0)

puts nine_to_twelve.include?(DateTime.new(2009,9,14,8,30))
puts nine_to_twelve.include?(DateTime.new(2009,9,14,9,5))
puts nine_to_twelve.include?(DateTime.new(2009,9,14,12,1))

class_times = (mondays | wednesdays | fridays) & nine_to_twelve
}
