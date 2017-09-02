class User::CategoriesController < ApplicationController
  
  before_action :set_category, only: [:show]
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  #GET /user/
  def index
  end
  
  def show
  end
  
  private
  
  def set_category
  end
end