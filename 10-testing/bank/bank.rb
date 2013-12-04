class Bank
  attr_accessor :name, :accounts

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def create_account(account, balance)
    @accounts[account] = balance
  end

  def deposit(account, amount)
    @accounts[account] += amount
  end

  def balance(account)
    @accounts[account]
  end

  def withdraw(account, amount)
    @accounts[account] -= amount if amount <= @accounts[account]
  end
end
