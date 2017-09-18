class User::FacultyCourseofstudiesController < ApplicationController
  
  before_action :get_courseofstudies, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/faculty_courseofstudies/faculty_id
  def index
  
  end
  
  # GET /user/faculty_courseofstudies/facult_id/courseofstudy_id
  def show
   @faculty_courseofstudy = @faculty_courseofstudies.find(params[:courseofstudy_id])
  end
  
  
  # the private section
  private
  
    def get_courseofstudies
      @faculty = Faculty.find(params[:faculty_id])
      @faculty_courseofstudies = @faculty.courseofstudies.page(params[:page]).per(2)
     
    end
  
end
