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
    @filter = true
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

coffee = CoffeeMaker.new
puts coffee.ready?
# it's not ready yet
puts coffee.add_water(3)
puts coffee.add_filter
puts coffee.brew
# it's still not ready, so it doesn't brew
puts coffee.add_coffee_grounds(3)
puts coffee.brew
# now it can brew your coffee
