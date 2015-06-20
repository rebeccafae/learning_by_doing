# I'm a worthless comment
class CashRegister
  attr_reader :total

  def initialize
    @total = 0.00
  end

  def purchase(price)
    @total += price
  end

  def pay(amount_paid)
    change = (@total -= amount_paid)
    if change <= 0
      @total = change.abs.round(2)
      puts "Your change is $#{@total}"
      # @total = 0.00
    else
      @total = change
      puts "Your new total is $#{@total}"
    end
  end
end
