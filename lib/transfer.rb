class Transfer

  attr_accessor :sender, :receiver, :status, :amount, :@sender_status, :@receiver_status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?(*amount)
    @sender_status = @sender.valid?
    @receiver_status = @receiver.valid?
    if @sender.valid? && @receiver.valid?
      return true
    end
  end
end
