class CourseofstudiesController < ApplicationController
  before_action :set_courseofstudy, only: [:show, :edit, :update, :destroy]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]},
  moderator:   :all,
  admin:       :all

  # GET /courseofstudies
  # GET /courseofstudies.json
  def index
    @courseofstudies = Courseofstudy.all
  end

  # GET /courseofstudies/1
  # GET /courseofstudies/1.json
  def show
  end

  # GET /courseofstudies/new
  def new
    @courseofstudy = Courseofstudy.new
  end

  # GET /courseofstudies/1/edit
  def edit
  end

  # POST /courseofstudies
  # POST /courseofstudies.json
  def create
    @courseofstudy = Courseofstudy.new(courseofstudy_params)

    respond_to do |format|
      if @courseofstudy.save
        format.html { redirect_to @courseofstudy, notice: 'Courseofstudy was successfully created.' }
        format.json { render :show, status: :created, location: @courseofstudy }
      else
        format.html { render :new }
        format.json { render json: @courseofstudy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courseofstudies/1
  # PATCH/PUT /courseofstudies/1.json
  def update
    respond_to do |format|
      if @courseofstudy.update(courseofstudy_params)
        format.html { redirect_to @courseofstudy, notice: 'Courseofstudy was successfully updated.' }
        format.json { render :show, status: :ok, location: @courseofstudy }
      else
        format.html { render :edit }
        format.json { render json: @courseofstudy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courseofstudies/1
  # DELETE /courseofstudies/1.json
  def destroy
    @courseofstudy.destroy
    respond_to do |format|
      format.html { redirect_to courseofstudies_url, notice: 'Courseofstudy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courseofstudy
      @courseofstudy = Courseofstudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def courseofstudy_params
      params.require(:courseofstudy).permit(:name, :symbol, :description, :faculty_id, :studytype_id)
    end
    
end
