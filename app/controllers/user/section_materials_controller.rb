class User::SectionMaterialsController < ApplicationController
  
  before_action :get_materials_and_faculty_id, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/section_materials/1/1/1/1
  def index
  end
  
  # GET /user/section_materials/1/1/1/1/1
  def show
    @material = @materials.find(params[:id])
  end
  
  # the private section
  private
  
    def get_materials_and_faculty_id
      @faculty_id = Courseofstudy.find(params[:courseofstudy_id]).faculty_id
      @materials = Material.where("lecture_id = ? AND section_id = ?",
                                   params[:lecture_id],
                                   params[:section_id])
    end
  
end