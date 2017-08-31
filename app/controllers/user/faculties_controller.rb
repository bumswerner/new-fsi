class User::FacultiesController < ApplicationController
  
  before_action :set_faculty, only: [:show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/faculties/
  def index
    @faculties = Faculty.all
  end
  
  # GET user/faculties/1
  def show
  end
  
  
  
  # the private section
  private
  
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end
    
end