#!/usr/bin/env ruby

seconds_per_minute = 60
minutes_per_hour = 60
hours_per_day = 24
days_per_week = 7
seconds_in_hour = seconds_per_minute * minutes_per_hour
seconds_in_day = seconds_per_minute * minutes_per_hour * hours_per_day
seconds_in_week = seconds_in_day * days_per_week

puts "There are #{seconds_per_minute} seconds in a minute."
puts "There are #{minutes_per_hour} minutes in an hour."
puts "There are #{hours_per_day} hours in a day."
puts "There are #{days_per_week} days in a week."
puts 'That means there are:'
puts "  #{seconds_in_hour} seconds in an hour,"
puts "  #{seconds_in_day} seconds in a day,"
puts "  #{seconds_in_week} seconds in a week."

puts ''
seconds_in_a_year = seconds_in_day * 365
print "That means when you turn 20, you've been alive "
puts "for #{seconds_in_a_year * 20} seconds,"
print 'and if you make it to 100, you will have '
puts "lived #{seconds_in_a_year * 100} seconds. Make them count!"
