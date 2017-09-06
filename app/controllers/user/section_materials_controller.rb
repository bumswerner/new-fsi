class User::SectionMaterialsController < ApplicationController
  
  before_action :get_materials, only: [:index, :show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/section_materials/1/1/1
  def index
  end
  
  # GET /user/section_materials/1/1/1/1
  def show
    # TODO hier muss noch unterschieden werden von wo der Aufruf kam
    @material = @materials.find(params[:id])
    
  end
  
  # the private section
  private
  
    def get_materials
      @materials = Material.where("lecture_id = ? AND section_id = ?",
                                   params[:lecture_id],
                                   params[:section_id])
    end
  
end