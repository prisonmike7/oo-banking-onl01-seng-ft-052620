class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?(amount)
    sender.amount -= amount
    receiver.amount += amount
    if @sender.valid?(amount) || @receiver.valid?(amount)
      return true
    end
  end
end
