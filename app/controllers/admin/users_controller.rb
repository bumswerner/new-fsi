class Admin::UsersController < ApplicationController
   
  before_action :set_user, only: [:show, :edit, :update, :destroy] 
   
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit, :show, :index]},
  moderator:   {except: [:destroy, :new, :create, :update, :edit, :show, :index]},
  admin:       {except: [:new, :create, :show]}
   
  def index 
    @users = User.all
  end
  
  def new
    # out of order 
  end
  
  def edit 
    
  end
  
  def show
    # out of order
  end
  
  def create
    # out of order
  end
  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_users_path, notice: 'User was successfully updated.' }
        format.json { render :admin_users_path, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
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
      params.require(:user).permit(:email, :roles)
    end
    
end