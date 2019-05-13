class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t| 
      t.text :first_name 
    
    
  end 
  
end 