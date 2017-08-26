module CurrentUserConcern
  extend ActiveSupport::Concern
  
  def current_user 
    super || guest_user                          
  end
    
  def guest_user
    guest = GuestUser.new
    guest.username = "Guest"
    guest.email = "guest@example.de"
    guest
  end
end  