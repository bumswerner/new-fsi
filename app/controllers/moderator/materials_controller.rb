class Moderator::MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :edit, :update, :destroy]
  
  # set access roles
  # access user: {except: [:destroy, :new, :create, :update, :edit]},
  access moderator:   :all,
  admin:              :all

  # GET /materials
  # GET /materials.json
  def index
    @faculties = Faculty.all
    @faculty = @faculties.find(params[:faculty_id])
    @materials = Material.where(faculty_id: @faculty.id)
    
   # @materials_per_lecture = @materials.where(lecture_id: 1)
    
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)

    respond_to do |format|
      if @material.save
        format.html { redirect_to moderator_faculty_materials_path(params[:faculty_id]),
                      notice: 'Material was successfully created.' }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to  moderator_faculty_materials_path(params[:faculty_id]), 
                      notice: 'Material was successfully updated.' }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to moderator_faculty_materials_url(params[:faculty_id]),
                    notice: 'Material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  # Create a download section
  # def download
  #   send_file(
  #     material.data.url(:original, false),
  #     filename: @material.data_file_name,
  #     type: @material.data_content_type
  #   )   
  # end
  
  def download
    send_file @material.data.url(:original, false),
    :type => @material.data_content_type,
    :x_sendfile => true
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.require(:material).permit(:name, :discription, :data, :section_id, :lecture_id, :faculty_id)
    end
end
