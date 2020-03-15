class Transfer
  
  attr_accessor :sender, :receiver, :status
  
  def initialize(amount)
  @amount = amount
  @status = "pending"
  end  
  
  def valide?
    self.valide == true 
    if sender.valide == true || receiver.valide == true 
    end
  end 
    
    
  
  
  
  
  
  
  
end
