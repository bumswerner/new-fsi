class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
  include SetRole
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include SetGlobalParams
  
  
end
  
