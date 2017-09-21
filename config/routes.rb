Rails.application.routes.draw do
  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

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
    
    resources :notificationtypes do
      resources :notifications
    end
    
    resources :galleries do
      resources :images
    end
    
  end
  
  
  # material routes for user 
  namespace :user do
    # route 1 and route 2
    resources :faculties, only: [:index, :show]
    
    # route 3
    get 'faculty_courseofstudies/:faculty_id',
        to: 'faculty_courseofstudies#index',
        :as => 'faculty_courseofstudies'
    # route 4
    get 'faculty_courseofstudies/:faculty_id/:courseofstudy_id',
        to: 'faculty_courseofstudies#show',
        :as => 'faculty_courseofstudy'
        
    # route 5
    get 'category_lectures/:faculty_id/:category_id/:courseofstudy_id',
         to: 'category_lectures#index',
         :as => 'category_lectures'
    # route 6
    get 'category_lectures/:faculty_id/:category_id/:courseofstudy_id/:id',
         to: 'category_lectures#show', 
         :as => 'category_lecture'
         
    # route 7
    get 'courseofstudy_categories/:faculty_id/:courseofstudy_id',
        to: 'courseofstudy_categories#index',
        :as => 'courseofstudy_categories'
    # route 8
    get 'courseofstudy_categories/:faculty_id/:courseofstudy_id/:id',
        to: 'courseofstudy_categories#show',
        :as => 'courseofstudy_category'
    
    # route 9     
    get 'section_materials/:category_id/:courseofstudy_id/:lecture_id/:section_id',
         to: 'section_materials#index',
         :as => 'section_materials'
    # route 10     
    get 'section_materials/:category_id/:courseofstudy_id/:lecture_id/:section_id/:id',
         to: 'section_materials#show',
         :as => 'section_material'
         
    # route 11
    get 'lecture_sections/:category_id/:lecture_id/:courseofstudy_id',
         to: 'lecture_sections#index',
         :as => 'lecture_sections'
    # route 12
    get 'lecture_sections/:category_id/:lecture_id/:courseofstudy_id/:id',
         to: 'lecture_sections#show',
         :as => 'lecture_section'
         
    # Gallery Section
    get 'galleries/:gallery_id',
         to: 'galleries#index',
         as: 'galleries'
         
    # News Section
    get 'news/:notification_id',
         to: 'notifications#index',
         as: 'news'
        
  end

  
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
