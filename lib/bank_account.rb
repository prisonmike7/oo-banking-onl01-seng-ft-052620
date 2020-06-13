class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?(*amount)
    if !amount.nil?
      @balence -= amount
    end
    if @balance <= 0 || @status == "closed"
      return false
    end
    return true
  end

  def close_account
    @status = "closed"
  end

end
