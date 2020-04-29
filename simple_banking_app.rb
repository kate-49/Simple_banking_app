class SimpleBankingApp
  def initialize
    @total = 0
  end

  def balance
    return "Your balance is £#{@total}"
  end

  def deposit(num)
    @total += num
  end

  def withdraw(num)
    @total -= num
    return @total
  end
end
