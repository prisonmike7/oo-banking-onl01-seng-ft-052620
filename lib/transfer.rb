class Transfer

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    sender.amount -= amount
    receiver.amount += amount
  end

  def valid?(amount)

    if @sender.valid?(amount) || @receiver.valid?(amount)
      return true
    end
  end
end
