class NotificationtypesController < ApplicationController
  before_action :set_notificationtype, only: [:show, :edit, :update, :destroy]

  # GET /notificationtypes
  # GET /notificationtypes.json
  def index
    @notificationtypes = Notificationtype.all
  end

  # GET /notificationtypes/1
  # GET /notificationtypes/1.json
  def show
  end

  # GET /notificationtypes/new
  def new
    @notificationtype = Notificationtype.new
  end

  # GET /notificationtypes/1/edit
  def edit
  end

  # POST /notificationtypes
  # POST /notificationtypes.json
  def create
    @notificationtype = Notificationtype.new(notificationtype_params)

    respond_to do |format|
      if @notificationtype.save
        format.html { redirect_to @notificationtype, notice: 'Notificationtype was successfully created.' }
        format.json { render :show, status: :created, location: @notificationtype }
      else
        format.html { render :new }
        format.json { render json: @notificationtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notificationtypes/1
  # PATCH/PUT /notificationtypes/1.json
  def update
    respond_to do |format|
      if @notificationtype.update(notificationtype_params)
        format.html { redirect_to @notificationtype, notice: 'Notificationtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @notificationtype }
      else
        format.html { render :edit }
        format.json { render json: @notificationtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificationtypes/1
  # DELETE /notificationtypes/1.json
  def destroy
    @notificationtype.destroy
    respond_to do |format|
      format.html { redirect_to notificationtypes_url, notice: 'Notificationtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificationtype
      @notificationtype = Notificationtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notificationtype_params
      params.require(:notificationtype).permit(:name, :description)
    end
end
