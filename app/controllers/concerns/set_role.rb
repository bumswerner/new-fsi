module SetRole
  extend ActiveSupport::Concern
  
  included do
    before_action :set_first_user_to_admin
  end
  
  # TODO
  
  # set the first user to admin
  def set_first_user_to_admin
    user = User.first
    if !user.nil?
      if user.id == 1 && !user.is_admin
         user.update!(roles: "admin")
      end
    end
  end
 
end