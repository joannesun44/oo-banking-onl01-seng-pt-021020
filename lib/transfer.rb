class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
  @amount = amount
  @sender = sender
  @receiver = receiver
  @status = "pending"
  end  
  
  def valid?
   sender.balance > 0 && sender.status == "open"
   receiver.balance > 0 && receiver.status == "open"
   sender.valid?
   receiver.valid?
  end 
    
   def execute_transaction
   end 
   
   def reverse_transfer 
     execute_transaction.reverse
   end 
  
  
  
  
  
  
  
end
