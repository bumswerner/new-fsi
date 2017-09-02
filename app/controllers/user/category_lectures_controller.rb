class User::CategoryLecturesController < ApplicationController
   before_action :set_courseofstudy, only: [:show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET user/category_lectures/1
  def index
    @lectures = Category.find(params[:category_id]).lectures
  end
  
  # GET user/category_lectures/1/1
  def show
    @lecture = Category.find(params[:category_id])
                       .lecture.find(params[:id])
  end
  
  
  
  # the private section
  private
  
    def set_courseofstudy
      
    end
end