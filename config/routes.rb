Rails.application.routes.draw do
  
  # all routes 
  resources :galleries
  resources :notifications
  resources :notificationtypes
  resources :profiles
  resources :materials
  get "/materials" => "materials#download"
  get "materials/download"
  resources :connections
  resources :assoziations
  resources :sections
  resources :lectures
  resources :categories
  resources :courseofstudies
  resources :studytypes
  resources :faculties
  resources :images
  
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
  resources :users #,:only => [:index, :show, :edit, :update, :new, :create, :delete]
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end
