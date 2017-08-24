class User < ApplicationRecord
  
  has_one :profile
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
        
  # add virtual attributes
  validates_presence_of :name
  
  def first_name
    self.name.split.first
  end
  
  def last_name
    self.name.split.last 
  end  
end
