class User::LectureSectionsController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET  /user/lecture_sections/1/1
  def index
    @faculty_id = Courseofstudy.find(params[:courseofstudy_id]).faculty_id
    @sections = Lecture.find(params[:lecture_id]).materials
    @category = Category.find(params[:category_id])
  end
  
  # GET /user/lecture_sections/1/1/1
  def show
   @faculty_id = Courseofstudy.find(params[:courseofstudy_id]).faculty_id
   @section = Lecture.find(params[:lecture_id]).materials.find(params[:id])
  end
  
end