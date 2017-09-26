class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found
  
  protected
  
    # is empty because it will be override by children controller
    def resource_not_found
    end
  
  before_action :authenticate_user!
  
  include SetRole
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include SetGlobalParams
  
  
end
  
