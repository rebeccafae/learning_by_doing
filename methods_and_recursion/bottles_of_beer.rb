#!/usr/bin/env ruby

def pluralize(number, string)
  number_string = number >= 1 ? number : 'no more'
  string += 's' if number > 1 || number == 0
  "#{number_string} #{string}"
  # old code I left in here for reference
  # if number > 1
  #   "#{number} #{string}s"
  # elsif number == 0
  #   'no more bottles'
  # else
  #   "#{number} #{string}"
  # end
end

def ending
  puts 'No more bottles of beer on the wall, no more bottles of beer.'
  puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
end

def song(num_bottles)
  if num_bottles > 0
    print "#{pluralize(num_bottles, 'bottle')} of beer on the wall, "
    puts "#{pluralize(num_bottles, 'bottle')} of beer."
    num_bottles -= 1
    print 'Take one down and pass it around, '
    puts "#{pluralize(num_bottles, 'bottle')} of beer on the wall.\n\n"
    song(num_bottles)
  else
    ending
  end
end

puts song(99)
