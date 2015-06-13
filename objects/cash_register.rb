#!/usr/bin/env ruby

# here's my cash register
class CashRegister
  def initialize
    @owed = 0.0
  end

  def total
    '%.2f' % @owed
  end

  def purchase(price)
    @owed += price
  end

  def pay(amount_paid)
    change = amount_paid - @owed.to_f
    if change >= 0
      change = '%.2f' % change
      puts "Your change is $#{change}"
      @owed = 0.00
    else
      @owed = '%.2f' % change.abs
      puts "Your new total is $#{@owed}"
    end
  end
end

if __FILE__ == $0
  register = CashRegister.new
  puts register.total
  register.purchase(3.78)
  register.purchase(5.22)
  puts register.total
  register.pay(5.00)
  puts register.total
  register.pay(5.00)
  puts register.total
end
