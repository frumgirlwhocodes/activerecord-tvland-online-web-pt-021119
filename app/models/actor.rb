class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters 
  
  def full_name 
    return "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles 
   roles= []
   self.characters do |c| 
     role= "#{c.name}-#{c.show.name}"
   roles << role 
 end 
 roles 
   
end
  
end