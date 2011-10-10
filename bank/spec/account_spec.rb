require 'rspec'
require 'account'

describe Account do
    it "should initially have a balance of zero" do
      account = Account.new
      account.balance.should == 0.0
    end

  it "should initially have a balance equal to the starting balance" do
      starting_balance = 100.00
      subject = Account.new(starting_balance)
      subject.balance.should == starting_balance
  end

  it "should add to the deposit the specified amount" do

    starting_balance = 50.00
    account = Account.new(starting_balance)
    amount = 200
    account.deposit(amount)
    account.balance.should == starting_balance + amount
  end

  it "should remove from the balance the specified amount to withdraw" do

    starting_balance = 150.00
    account = Account.new(starting_balance)
    amount = 100
    account.withdraw(amount)
    account.balance.should == starting_balance - amount
  end

  it "should remove from account1 the transfered amount" do
    starting_balance = 100.00
    amount = 50
    account1 = Account.new(starting_balance)
    account2 = Account.new(starting_balance)

    account1.transfer_to(account2,amount)
    account1.balance.should == starting_balance - amount

  end
  it "should add to account2 the transfered amount" do
    starting_balance = 100.00
    amount = 50
    account1 = Account.new(starting_balance)
    account2 = Account.new(starting_balance)

    account1.transfer_to(account2,amount)
    account2.balance.should == starting_balance + amount
  end
end


