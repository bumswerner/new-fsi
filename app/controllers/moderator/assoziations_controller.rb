class Moderator::AssoziationsController < ApplicationController
  before_action :set_assoziation, only: [:show, :edit, :update, :destroy]
  #respond_to :html, :js
  # set access roles
  access moderator:   :all,
  admin:       :all

  # GET /assoziations
  # GET /assoziations.json
  def index
    @assoziations = Assoziation.all
  end

  # GET /assoziations/1
  # GET /assoziations/1.json
  def show
  end

  # GET /assoziations/new
  def new
    @assoziation = Assoziation.new
  end

  # GET /assoziations/1/edit
  def edit
    @courseofstudy = Courseofstudy.find(@assoziation.courseofstudy_id) 
  end

  # POST /assoziations
  # POST /assoziations.json
  def create
    @assoziation = Assoziation.new(assoziation_params)

    respond_to do |format|
      if @assoziation.save
        format.html { redirect_to moderator_assoziations_path, notice: 'Assoziation was successfully created.' }
        format.json { render :show, status: :created, location: @assoziation }
      else
        format.html { render :new }
        format.json { render json: @assoziation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assoziations/1
  # PATCH/PUT /assoziations/1.json
  def update
    respond_to do |format|
      if @assoziation.update(assoziation_params)
        format.html { redirect_to moderator_assoziations_path, notice: 'Assoziation was successfully updated.' }
        format.json { render :show, status: :ok, location: @assoziation }
      else
        format.html { render :edit }
        format.json { render json: @assoziation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assoziations/1
  # DELETE /assoziations/1.json
  def destroy
    @assoziation.destroy
    respond_to do |format|
      format.html { redirect_to moderator_assoziations_url, notice: 'Assoziation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  # for AJAX call
  def dropdown
    @courseofstudies = Studytype.find(params[:studytype_id]).courseofstudies
    render :json => @courseofstudies.to_json()
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assoziation
      @assoziation = Assoziation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assoziation_params
      params.require(:assoziation).permit(:code, :instructor, :category_id, :courseofstudy_id, :lecture_id)
    end
end
