#!/usr/bin/env ruby

def pluralize(number, string)
  if number > 1
    "#{number} #{string}s"
  elsif number == 0
    'no more bottles'
  else
    "#{number} #{string}"
  end
end

def song(num_bottles)
  if num_bottles > 0
    print "#{pluralize(num_bottles, 'bottle')} of beer on the wall, "
    puts "#{pluralize(num_bottles, 'bottle')} of beer."
    num_bottles -= 1
    print 'Take one down and pass it around, '
    puts "#{pluralize(num_bottles, 'bottle')} of beer on the wall."
    puts ''
    song(num_bottles)
  else
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end
end

puts song(99)
