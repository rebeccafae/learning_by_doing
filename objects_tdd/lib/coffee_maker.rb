# this is a coffee maker
class CoffeeMaker
  def initialize
    @amount_water = 0
    @filter = false
    @amount_coffee = 0
  end

  def add_water(amount)
    @amount_water = amount
  end

  def add_filter
    @filer = true
  end

  def add_coffee_grounds(amount)
    @amount_coffee = amount
  end

  def ready?
    add_coffee_grounds(@amount_coffee) > 0 && add_water(@amount_water) > 0 && add_filter == true
  end

  def brew
    ready?
  end
end
