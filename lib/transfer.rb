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
     if self.valid? == false || sender.balance < self.amount
       self.status = "rejected"
       return "Transaction rejected. Please check your account balance."
       
     elsif self.status == "pending"
     sender.balance -= self.amount
     receiver.balance += self.amount 
     self.status = "complete"
   end 
   end 
   
   def reverse_transfer 
     execute_transaction.reverse
   end 
  
  
  
  
  
  
  
end
