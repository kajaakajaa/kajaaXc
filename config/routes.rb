Rails.application.routes.draw do
  root 'songs#index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users
  resources :likes
  resources :uploadlists
  resources :comments
  resources :songs
  get '/songs' => 'songs#show'
  post '/songs/create' => 'songs#create'
  
  # get 'comments/edit'
  # get 'uploadlists/index'
  # get 'likes/index'
  # get 'likes/show'
  # get 'likes/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # post "songs/create", to: "songs#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
