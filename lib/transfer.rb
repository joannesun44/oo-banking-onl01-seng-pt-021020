class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(amount)
  @amount = amount
  @status = "pending"
  end  
  
  def valide?
    self.valide == true 
    if sender.valide == true || receiver.valide == true 
    end
  end 
    
   def execute_transaction
   end 
   
   def reverse_transfer 
     execute_transaction.reverse
   end 
  
  
  
  
  
  
  
end
