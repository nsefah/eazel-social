Rails.application.routes.draw do

  # routes for pages
  get 'profile' => 'pages#profile'
  get 'artists' => 'pages#artists'
  get 'themes' => 'pages#themes'
  get 'highlights' => 'pages#highlights'

  # routes for landing pages
  get 'posts/index' => 'posts#index'

  get 'home/index'
  get 'home/profile'

  # dynamic route for third-party login
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

  #route for users
  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #route for posts
  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    #route for comments
    resources :comments
  end
  root 'posts#index'
end
