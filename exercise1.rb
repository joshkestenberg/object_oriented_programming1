class BankAccount

  def initialize(acct_name)
    @acct_name = acct_name
    @balance = 0
    @interest_rate = 0.05
  end

  attr_reader :balance

  def deposit(sum)
    @balance += sum
  end

  def withdraw(sum)
    @balance -= sum
  end

  def gain_interest
    @balance = @balance + @balance * @interest_rate
  end

end
