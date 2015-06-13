#!/usr/bin/env ruby

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

  def prepare
    if @water > 0 && @filter == true && @grounds >=0
      @ready = 'ready'
    else
      'Did you add water, coffee grounds, and a filter?'
    end
  end

  def brew
    if @ready == 'ready'
      @water = 0
      @grounds = 0
      @filter = false
      puts 'Your coffee is brewing... Enjoy!'
    else @ready != 'ready'
      puts 'Your coffee maker is not ready.'
    end
  end
  # add methods to grind beans, turn on, and off
end

coffee = CoffeeMaker.new
puts coffee.add_water(2)
puts coffee.add_coffee_grounds(2)
puts coffee.add_filter
puts coffee.prepare
puts coffee.brew
puts coffee.brew
