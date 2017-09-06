class User::LectureSectionsController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET  /user/lecture_sections/1/1
  def index
    @sections = Lecture.find(params[:lecture_id]).materials
    @category = Category.find(params[:category_id])
  end
  
  # GET /user/lecture_sections/1/1/1
  def show
    @section = Lecture.find(params[:lecture_id]).materials.find(params[:id])
  end
  
end