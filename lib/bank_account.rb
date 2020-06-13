class BankAccount

  attr_accessor :balance
  attr_reader :balance

  def initialize(name)
    @name = name
    @balance = 1000
  end



end
