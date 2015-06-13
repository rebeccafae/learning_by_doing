#!/usr/bin/env ruby

class CoffeeMaker
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
      @ready = true
    else
      'Did you add water, coffee grounds, and a filter?'
    end
  end

  def brew
    @ready == true ? 'Your coffee is brewing' : 'Your coffee maker is not ready.'
  end
  # add methods to grind beans, turn on, and off
end
