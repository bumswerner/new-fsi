class User::SectionMaterialsController < ApplicationController
  
  before_action :get_data, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/section_materials/category_id/courseofstudy_id/lecture_id/section_id
  def index
  end
  
  # GET /user/section_materials/category_id/courseofstudy_id/lecture_id/section_id/id
  def show
    @material = @materials.find(params[:id])
  end
  
  # the private section
  private
  
    def get_data
      @faculty_id = Courseofstudy.find(params[:courseofstudy_id]).faculty_id
      @faculty = Faculty.find(@faculty_id)
      @studytype = Studytype.find(params[:courseofstudy_id])
      @courseofstudy = Courseofstudy.find(params[:courseofstudy_id])
      @category = Category.find(params[:category_id])
      @section = Section.find(params[:section_id])
      @materials = Material.where("lecture_id = ? AND section_id = ?",
                                   params[:lecture_id],
                                   params[:section_id]).page(params[:page]).per(2)
    end
  
end