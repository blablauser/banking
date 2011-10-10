class Account
  attr_accessor :balance, :amount

  def initialize(starting_balance=0.0)
    @balance=starting_balance
  end

 def deposit(amount)
   @balance = @balance + amount

 end

 def withdraw(amount)
   @balance -= amount

 end

  def transfer_to(account,amount)
    @balance -= amount
    account.deposit(amount)
  end

end