class User::CategoryLecturesController < ApplicationController
  
  before_action :get_lectures, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET user/category_lectures/1
  def index
    @lectures 
  end
  
  # GET user/category_lectures/1/1
  def show
    @lecture = @lectures.find(params[:id])
  end
  
  
  # the private section
  private
  
    def get_lectures
      @lectures = Faculty.find(params[:faculty_id]).courseofstudies.find(params[:category_id]).lectures
    
    end
end