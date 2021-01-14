
require_relative './bank_account.rb'
require 'pry'



class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  attr_reader :hi

  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = status = 'pending'
    @amount = amount 
    @i = i = 0
  end

  def valid?
    sender.valid? && receiver.valid?
  end
   #binding.pry

  def execute_transaction
    if sender.balance > @amount && valid?
      @i +=1
        if @i == 1
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = 'complete'
        end
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == 'complete'
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = 'reversed'
    end
  end
 
end