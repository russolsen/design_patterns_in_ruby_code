require 'account'


class InterestBearingAccount < BankAccount
  def initialize(owner, rate)
    super(owner)
    @rate = rate
  end

  def deposit_interest
    @balance += @rate * @balance
  end
end


