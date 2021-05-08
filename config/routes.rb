Rails.application.routes.draw do
  devise_for :users
  
  
  resources :books
  resources :users
  root 'homes#top'
  get "users" => "users#index"
 
  
  
end
