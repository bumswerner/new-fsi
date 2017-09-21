class User::GalleriesController < ApplicationController
  
  before_action :get_data, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/galleries/gallery_id
  def index 
     @galleries = Gallery.all
     @gallery = @galleries.find(params[:gallery_id])
     @images = @gallery.images.page(params[:page]).per(8)
  end
  
  # GET /user/galleries/1
  def show
  
  end
  
  # the private section
  private
  
    def get_data
     
    end
end