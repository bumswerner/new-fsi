Rails.application.routes.draw do
  
  # all routes 
  resources :galleries
  resources :notifications
  resources :notificationtypes
  resources :profiles
  resources :materials
 
  resources :connections
 
  resources :sections
  

 
 
 
  resources :images
  
  
  # routes only for moderator and admin
  namespace :moderator do
    resources :faculties
    resources :studytypes
    resources :courseofstudies
    resources :categories
    resources :assoziations
    resources :lectures
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
    resources :users 
  end
  
  
  # change the default routes at devise
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
