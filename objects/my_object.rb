#!/usr/bin/env ruby

# Check to see if your coffee maker is ready with .ready?
# See what you're missing with .display_errors
# Add water, filter, or coffee_grounds with .add_water(how_much?) (etc)
# Brew your coffee with .brew
# If you try to brew when it's not ready it will tell you that it's not ready
class CoffeeMaker
  def initialize
    @water = 0
    @grounds = 0
    @filter = false
  end

  def add_water(number_of_cups)
    @water = number_of_cups
  end

  def add_filter
    @filter = true
  end

  def add_coffee_grounds(amount)
    @grounds = amount
  end

  def ready?
    if water? && filter? && coffee_grounds?
      true
    else
      false
    end
  end

  def errors
    error_array = []
    error_array << 'You need to add water.' unless water?
    error_array << 'You are missing a filter.' unless filter?
    error_array << 'You need to add some coffee grounds.' unless coffee_grounds?
    error_array
  end

  def display_errors
    errors.each { |e| puts e }
  end

  def water?
    @water > 0
  end

  def coffee_grounds?
    @grounds > 0
  end

  def filter?
    @filter
  end

  def brew
    if ready?
      @water = 0
      @grounds = 0
      @filter = false
      puts 'Your coffee is brewing... Enjoy!'
    else
      puts 'Your coffee maker is not ready.'
    end
  end
end

coffee = CoffeeMaker.new
puts coffee.add_water(2)
puts coffee.add_coffee_grounds(2)
puts coffee.add_filter
coffee.ready?
puts coffee.brew
