class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  # Other methods omitted ...

  def deposit(amount)
    s = subject
    s.deposit(amount)
  end

  def withdraw(amount)
    s = subject
    s.withdraw(amount)
  end

  def balance
    s = subject
    s.balance
  end

  def subject
    @subject || (@subject = @creation_block.call)
  end
end
