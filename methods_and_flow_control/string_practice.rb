#!/usr/bin/env ruby

string = 'this is a string to practice with'

puts string
puts string.capitalize
puts string.upcase
puts string.gsub('string', "'string'").capitalize
puts "The string '#{string}' has #{string.length} characters."
puts string.reverse
puts string.slice('practice' + ' ') * 2 + ('practice!')
