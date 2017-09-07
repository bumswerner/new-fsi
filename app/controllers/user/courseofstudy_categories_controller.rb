class User::CourseofstudyCategoriesController < ApplicationController

  before_action :get_categories, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/courseofstudies_categories/faculty_id/courseofstudy_id
  def index
    @courseofstudy = Courseofstudy.find(params[:courseofstudy_id])
    @assoziations = Assoziation.where("courseofstudy_id = ?", params[:courseofstudy_id])
    
  end
  
  # GET /user/courseofstudies_categories/faculty_id/courseofstudy_id/category_id
  def show
  @category = @categories.find(params[:id])
  end
  
  # the private section
  private
  
    def get_categories
      @categories = Courseofstudy.find(params[:courseofstudy_id]).categories.uniq
    end

end