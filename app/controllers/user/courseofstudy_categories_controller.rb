class User::CourseofstudyCategoriesController < ApplicationController

  before_action :get_data, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/courseofstudies_categories/faculty_id/courseofstudy_id
  def index
    @assoziations = Assoziation.where("courseofstudy_id = ?", params[:courseofstudy_id])
    
  end
  
  # GET /user/courseofstudies_categories/faculty_id/courseofstudy_id/category_id
  def show
   @category = Category.find(params[:id])
  end
  
  # the private section
  private
  
    def get_data
      @faculty = Faculty.find(params[:faculty_id])
      @courseofstudy = Courseofstudy.find(params[:courseofstudy_id])
      @studytype = Studytype.find(@courseofstudy.studytype_id)
      @categories = Courseofstudy.find(params[:courseofstudy_id]).categories.distinct.page(params[:page]).per(2)
    end

end