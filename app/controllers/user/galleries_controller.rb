class User::GalleriesController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/galleries
  def index 
    
  end
  
  # GET /user/galleries/1
  def show
  
  end
end