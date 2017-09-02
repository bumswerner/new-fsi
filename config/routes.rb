Rails.application.routes.draw do
  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
    
    resources :categories, only: [:index, :show]
   
    get 'category_lectures/:category_id',
         to: 'category_lectures#index',
         :as => 'category_lectures'
    get 'category_lectures/:category_id/:id',
         to: 'category_lectures#show', 
         :as => 'category_lecture'
         
    get 'section_materials/:category_id/:lecture_id:/:id',
         to: 'section_materials#index',
         :as => 'section_material'
  
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
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
