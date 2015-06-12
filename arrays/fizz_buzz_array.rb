#!/usr/bin/env ruby

numbers = (1..100).to_a

# this works but I don't think it's the way
# I'm supposed to do the assignment
fizzbuzz_array = numbers.map { |x| x % 3 == 0 && x % 5 == 0 ? 'FizzBuzz' : x }
                 .map { |x| x % 5 == 0 ? 'Buzz' : x }
                 .map { |x| x % 3 == 0 ? 'Fizz' : x }

puts fizzbuzz_array
