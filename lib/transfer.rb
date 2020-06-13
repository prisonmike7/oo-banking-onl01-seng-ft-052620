class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    end
    return false
  end

  def execute_transaction
    if valid?
      @sender.deposit(@amount)
      @receiver.deposit(@amount)
      @status = "complete"
    end
  end



end
