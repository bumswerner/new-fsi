class User::CourseofstudiesController < ApplicationController
  
  before_action :set_courseofstudy, only: [:show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/faculty/courseofstudies
  def index
    @courseofstudies = Courseofstudy.all
  end
  
  # GET user/faculty/courseofstudies/1
  def show
  end
  
  
  
  # the private section
  private
  
    def set_courseofstudy
      @courseofstudy = Courseofstudy.find(params[:id])
    end
  
end