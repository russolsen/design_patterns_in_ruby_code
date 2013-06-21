
class BankAccount
  def initialize(opening_balance)
    @balance = opening_balance
  end

  def balance
    @balance
  end

  def balance=(new_balance)
    @balance = new_balance
  end
end
