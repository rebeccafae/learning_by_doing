#!/usr/bin/env ruby

class CashRegister
  def total
    @owed.to_f
  end
  def purchase(price)
    @owed = price + total
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