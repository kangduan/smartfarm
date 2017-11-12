Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/index' => 'home#index'
  #get '/login' => 'home#login'
  #get '/register' => 'home#register'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
