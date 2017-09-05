class User::FacultyCourseofstudiesController < ApplicationController
  
  before_action :get_courseofstudies, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/faculty_courseofstudies/1
  def index
    @faculty_courseofstudies = @courseofstudies
  end
  
  # GET /user/faculty_courseofstudies/1/1
  def show
   @faculty_courseofstudy = @courseofstudies.find(params[:id])
  end
  
  
  # the private section
  private
  
    def get_courseofstudies
      @courseofstudies = Faculty.find(params[:faculty_id]).courseofstudies
    end
  
end
