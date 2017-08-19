class AssoziationsController < ApplicationController
  before_action :set_assoziation, only: [:show, :edit, :update, :destroy]

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
  end

  # POST /assoziations
  # POST /assoziations.json
  def create
    @assoziation = Assoziation.new(assoziation_params)

    respond_to do |format|
      if @assoziation.save
        format.html { redirect_to @assoziation, notice: 'Assoziation was successfully created.' }
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
        format.html { redirect_to @assoziation, notice: 'Assoziation was successfully updated.' }
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
      format.html { redirect_to assoziations_url, notice: 'Assoziation was successfully destroyed.' }
      format.json { head :no_content }
    end
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
