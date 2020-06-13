require 'pry'

class Transfer

  attr_accessor :sender, :receiver, :status, :amount, :transfer_counter

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @transfer_counter = 0
  end

  def valid?
    if @sender.valid? && @receiver.valid? && transfer_counter < 1
      return true
    end
    return false
  end

  def execute_transaction
    if self.valid?
      @sender.deposit(-@amount)
      @receiver.deposit(@amount)
      @status = "complete"
      @transfer_counter += 1
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end



end
