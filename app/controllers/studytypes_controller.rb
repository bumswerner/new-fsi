class StudytypesController < ApplicationController
  before_action :set_studytype, only: [:show, :edit, :update, :destroy]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]},
  moderator:   :all,
  admin:       :all

  # GET /studytypes
  # GET /studytypes.json
  def index
    @studytypes = Studytype.all
  end

  # GET /studytypes/1
  # GET /studytypes/1.json
  def show
  end

  # GET /studytypes/new
  def new
    @studytype = Studytype.new
  end

  # GET /studytypes/1/edit
  def edit
  end

  # POST /studytypes
  # POST /studytypes.json
  def create
    @studytype = Studytype.new(studytype_params)

    respond_to do |format|
      if @studytype.save
        format.html { redirect_to @studytype, notice: 'Studytype was successfully created.' }
        format.json { render :show, status: :created, location: @studytype }
      else
        format.html { render :new }
        format.json { render json: @studytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studytypes/1
  # PATCH/PUT /studytypes/1.json
  def update
    respond_to do |format|
      if @studytype.update(studytype_params)
        format.html { redirect_to @studytype, notice: 'Studytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @studytype }
      else
        format.html { render :edit }
        format.json { render json: @studytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studytypes/1
  # DELETE /studytypes/1.json
  def destroy
    @studytype.destroy
    respond_to do |format|
      format.html { redirect_to studytypes_url, notice: 'Studytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studytype
      @studytype = Studytype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studytype_params
      params.require(:studytype).permit(:name, :symbol, :description)
    end
end
