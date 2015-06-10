#!/usr/bin/env ruby

def song(num_bottles)
  if num_bottles > 2
    print "#{num_bottles} bottles of beer on the wall, "
    puts "#{num_bottles} bottles of beer."
    num_bottles -= 1
    print 'Take one down and pass it around, '
    puts "#{num_bottles} bottles of beer on the wall."
    puts ''
    song(num_bottles)
  elsif num_bottles == 2
    print "#{num_bottles} bottles of beer on the wall, "
    puts "#{num_bottles} bottles of beer."
    num_bottles -= 1
    print 'Take one down and pass it around, '
    puts "#{num_bottles} bottle of beer on the wall."
    puts ''
    song(num_bottles)
  elsif num_bottles == 1
    print "#{num_bottles} bottle of beer on the wall, "
    puts "#{num_bottles} bottle of beer."
    num_bottles -= 1
    print 'Take one down and pass it around, '
    puts 'no more bottles of beer on the wall.'
    puts ''
    puts song(num_bottles)
  else
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
  end
end

puts song(99)
