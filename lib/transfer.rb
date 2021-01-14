
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
  end

  def valid?
    sender.valid? && receiver.valid?
  end
   #binding.pry

  def execute_transaction
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = 'complete'
  end
 
end

 
#test.transfer_money
#binding.pry
# puts bezos.display_balance
# test_transfer.execute_transfer
# puts bezos.balance
# puts bezos.close_account

