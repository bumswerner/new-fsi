class User::SectionMaterialsController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
    
  # GET /user/section_materials/1/1/1
  def index
    @materials = Material.where("lecture_id = ? AND section_id = ?",
                                 params[:lecture_id],
                                 params[:section_id])
  end
  
  # GET /user/section_materials/1/1/1/1
  def show
    @material = Material.where("lecture_id = ? AND section_id = ? AND id = ?",
                                params[:lecture_id],
                                params[:section_id],
                                params[:id]).first
  end
  
end