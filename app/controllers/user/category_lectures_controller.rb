class User::CategoryLecturesController < ApplicationController
  
  before_action :get_assoziations, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET user/category_lectures/faculty_id/category_id/courseofstudy_id
  def index
    @lectures 
  end
  
  # GET user/category_lectures/faculty_id/category_id//courseofstudy_id/lecture_id
  def show
    @lecture = Lecture.find(params[:id])
  end
  
  
  # the private section
  private
  
    def get_assoziations    
      @assoziations = Assoziation.where("courseofstudy_id = ? AND category_id = ?",
                                        params[:courseofstudy_id],
                                        params[:category_id])
    end
    
end