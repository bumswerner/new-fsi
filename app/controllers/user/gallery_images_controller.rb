class User::GalleryImagesController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/gallery_images/gallery_id
  def index
    
  end
  
  # GET /user/gallery_images/gallery_id/id
  def show
  
  end
  
end