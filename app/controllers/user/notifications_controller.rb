class User::NotificationsController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  
  def index
    
  end
  
  
  def show
  
  end
end