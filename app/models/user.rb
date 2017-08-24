class User < ApplicationRecord
  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
        
  #validates_presence_of :name
  
  def first_name
    self.name.split.first_name
  end
  
  def last_name
    
  end  
end
