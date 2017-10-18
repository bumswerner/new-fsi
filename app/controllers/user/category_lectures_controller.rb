class User::CategoryLecturesController < ApplicationController
  
  before_action :get_data, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET user/category_lectures/faculty_id/category_id/courseofstudy_id
  def index
  end
  
  # GET user/category_lectures/faculty_id/category_id//courseofstudy_id/lecture_id
  def show
    @lecture = Lecture.find(params[:id])
    @assoziation = @lecture.assoziations.first
    @sections = @lecture.materials
  end
  
  # the private section
  private
  
    def get_data    
      @faculty = Faculty.find(params[:faculty_id])
      @courseofstudy = Courseofstudy.find(params[:courseofstudy_id])
      @studytype = Studytype.find(@courseofstudy.studytype_id)
      @assoziations = Assoziation.where("courseofstudy_id = ? AND category_id = ?",
                                        params[:courseofstudy_id],
                                        params[:category_id])
                                        .page(params[:page])
                                        .per(@lectures_per_page)
      @category = Category.find(params[:category_id])
    end
    
end