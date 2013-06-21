class Object
  def self.readable_attribute(name)
    code = %Q{
      def #{name}
        @#{name}
      end
    }
    class_eval(code)
  end
end

class BankAccount
  readable_attribute :balance

  def initialize(balance)
    @balance = balance
  end
end
