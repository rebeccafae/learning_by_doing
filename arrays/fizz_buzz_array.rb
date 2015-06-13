#!/usr/bin/env ruby

numbers = (1..100).to_a

def fizz_buzz_or_num(number)
  number % 3 == 0 && number % 5 == 0 ? 'FizzBuzz' : number
end

def buzz_or_number(number)
  number % 5 == 0 ? 'Buzz' : number
end

def fizz_or_number(number)
  number % 3 == 0 ? 'Fizz' : number
end

fizzbuzz_array = numbers.map { |number| fizz_buzz_or_num(number) }
                 .map { |number| buzz_or_number(number) }
                 .map { |number| fizz_or_number(number) }

puts fizzbuzz_array
