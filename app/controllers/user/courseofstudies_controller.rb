class User::CourseofstudiesController < ApplicationController
  
  before_action :set_courseofstudy, only: [:show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/faculties/1/courseofstudies
  def index
    @courseofstudies = Faculty.find(params[:faculty_id]).courseofstudies
  end
  
  # GET user/faculties/1/courseofstudies/1
  def show
  end
  
  
  
  # the private section
  private
  
    def set_courseofstudy
      @courseofstudy = Faculty.find(params[:faculty_id]).courseofstudies.find(params[:id])
    end
  
end