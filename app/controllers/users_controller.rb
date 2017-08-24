class UsersController < ApplicationController
   
   before_action :set_user, only: [:show, :edit, :update, :destroy] 
   
  def index 
    @users = User.all
  end
  
  def new
    @users = User.new
  end
  
  def edit 
    
  end
  
  def show
    
  end
  
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :index, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @user.update(user_params)
           user_params.inspect
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { render :users_path, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  private 
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    
    # Never trust parameters from the evil internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :admin, :moderator)
    end
    
end