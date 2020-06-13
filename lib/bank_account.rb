class BankAccount

  attr_accessor :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

end
