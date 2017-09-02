Rails.application.routes.draw do
  
  # all routes 
  resources :galleries
  resources :images
  
  resources :notifications
  resources :notificationtypes



  # material routes only for moderator and admin
  namespace :moderator do
    resources :faculties
    resources :studytypes
    resources :courseofstudies
    resources :categories
    resources :assoziations
    resources :lectures
    resources :sections
    resources :connections
    resources :materials
  end
  
  
  # material routes for user 
  namespace :user do
    resources :faculties, only: [:index, :show] do
      resources :courseofstudies, only: [:index, :show]
  end
    # resources :faculties do
           
    #   resources :courseofstudies do
    #     resources :assoziations, only: [:show, :index]
    #   end
    # end    
    # resources :lectures, :sections do
    #   resources :connections, only: [:show, :index]
    #   resources :materials, only: [:show, :index]
    # end  
   # resources :categories, only: [:show, :index]
   #resources studytypes
  end
  
  
  
  
  get "/materials" => "materials#download"
  get "materials/download"
  
  # scope module: 'faculty' do
  #   resources :courseofstudies
  # end
  
  # test ist jetzt die show action
  get 'test', to: :show, controller: 'galleries'
  
  # vertecke den user_controller im admin - Ordner
  namespace :admin do
    resources :users, only: [:edit, :update, :destroy, :index] 
  end
  
  resources :profiles
  
  # change the default routes at devise
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
