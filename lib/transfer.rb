class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?(*amount)
    if amount
      @sender.balance -= @amount
      @receiver.balance -= @amount
    end
    if @sender.valid? || @receiver.valid?
      return true
    end
  end
end
