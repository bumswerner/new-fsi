Rails.application.routes.draw do
  resources :materials
  resources :connections
  resources :sections
  resources :lectures
  resources :categories
  resources :courseofstudies
  resources :studytypes
  resources :faculties
  resources :images
  devise_for :users
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
