class User < ApplicationRecord
  
  has_one :profile
    
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin, :moderator], multiple: false)                              ##
  ############################################################################################ 
 
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  
  # variable area

        
  # add attributes validation
  validates_presence_of :username
  
  
  # read the current role name
  def get_role_name
    length = self.roles.to_s.length
    if length == 7
      role = "user"
    else if length == 19
      role = "moderator"
    else
      role = "admin"
    end
    end
  end
end
