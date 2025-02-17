class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    #binding.pry
   "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    #binding.pry
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end
  end
  
end