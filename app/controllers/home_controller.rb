class HomeController < ApplicationController
  
  # skip the user authentication for index action
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    
  end
  
end