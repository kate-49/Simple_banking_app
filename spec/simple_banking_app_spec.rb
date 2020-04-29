require './simple_banking_app.rb'

describe SimpleBankingApp do
  it "can show a customer balance" do
    test = SimpleBankingApp.new
    expect(test.balance).to eq("Your balance is £0")
  end

  it "can show a customer balance after adding money" do
    test = SimpleBankingApp.new
    expect(test.deposit(5)).to eq(5)
    expect(test.balance).to eq("Your balance is £5")
  end

  it "can add amount to a customer balance" do
    test = SimpleBankingApp.new
    expect(test.deposit(5)).to eq(5)
  end

  it "can add multiple amounts to a customer balance" do
    test = SimpleBankingApp.new
    test.deposit(5)
    test.deposit(8)
    test.deposit(102)
    expect(test.deposit(5)).to eq(120)
  end

  it "can withdraw an amount from a customer balance" do
    test = SimpleBankingApp.new
    test.deposit(20)
    expect(test.withdraw(13)).to eq(7)
  end

  it "can withdraw multiple amounts from a customer balance" do
    test = SimpleBankingApp.new
    test.deposit(50)
    test.withdraw(2)
    test.withdraw(5)
    test.withdraw(20)
    expect(test.withdraw(13)).to eq(10)
  end

end
