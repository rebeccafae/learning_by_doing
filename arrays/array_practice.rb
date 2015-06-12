#!/usr/bin/env ruby

numbers_array = (1..10).to_a

puts numbers_array.join('...') + '...'
puts 'T-' + numbers_array.reverse.join(', ') + '...  BLASTOFF!'
puts "The last element is #{numbers_array.last}"
puts "The first element is #{numbers_array.first}"
puts "The third element is #{numbers_array[2]}"
print 'The element with an index of '
puts "#{numbers_array.index(4)} is #{numbers_array[3]}"
puts "The second from last element is #{numbers_array[-2]}"
puts "The first four elements are '#{numbers_array.first(4).join(', ')}'"
print "If we delete #{numbers_array.delete(5)}, #{numbers_array.delete(6)} "
print "and #{numbers_array.delete(7)} from the array, "
puts "we're left with #{numbers_array.to_s.gsub(' ', '')}"
print "If we add #{numbers_array.unshift(5).first} at the beginning of "
# same array output as line 16 but trying it a different way
puts "the array, we're left with [#{numbers_array.join(', ')}]"
print "If we add #{numbers_array.push(6).last} at the end of the array, "
puts "we're left with #{numbers_array.to_s.gsub(' ', '')}"
puts "Only the elements #{numbers_array.select { |x| x > 8 } } are > 8."
print 'If we remove all the elements, then the length of the array is '
puts numbers_array.clear.length
