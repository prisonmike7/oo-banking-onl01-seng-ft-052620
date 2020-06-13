class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?(*amount)
    @sender.balance -= amount
    @receiver.balance -= amount
    if @sender.valid? || @receiver.valid?
      return true
    end
  end
end
