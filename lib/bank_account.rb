class BankAccount
    require 'pry'

    attr_reader :name, :display_balance
    attr_accessor :balance, :status
    attr_writer :deposit
    
    def initialize(name)
        @name = name
        @balance = balance=1000
        @status = status='open'
        #binding.pry
    end
     def deposit(deposit_amount)
         @balance += deposit_amount
     end
     def display_balance
        "Your balance is $#{@balance}."
     end
     def valid?
        if @balance > 0 && @status == "open"
            return true
        else
            return false
        end
    end       
    def close_account
        @balance = 0
        @status = 'closed'
    end
  
end
bezos = BankAccount.new("Bezos")
# binding.pry
puts bezos.display_balance
bezos.deposit(1000)
puts bezos.display_balance
puts bezos.valid?
bill = BankAccount.new("Bill")
