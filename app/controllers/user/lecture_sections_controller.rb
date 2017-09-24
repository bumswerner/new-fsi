class User::LectureSectionsController < ApplicationController
  
  before_action :get_data, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET  /user/lecture_sections/1/1
  def index
    @sections = @lecture.materials.page(params[:page]).per(@sections_per_page)
  end
  
  # GET /user/lecture_sections/1/1/1
  def show
    @section = @lecture.materials.find(params[:id])
    @materials = Material.where("lecture_id = ? AND section_id = ?",
                                params[:lecture_id], @section)
  end
  
  # the private section
  private
  
  def get_data
    @courseofstudy = Courseofstudy.find(params[:courseofstudy_id])
    @faculty_id = @courseofstudy.faculty_id
    @faculty = Faculty.find(@faculty_id)
    @category = Category.find(params[:category_id])
    @lecture = Lecture.find(params[:lecture_id])
    @studytype = Studytype.find(@courseofstudy.studytype_id)
  end
  
end