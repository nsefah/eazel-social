Rails.application.routes.draw do
  get 'pages/new'
  get 'pages/show'
  get 'pages/edit'
  get 'pages/form'

  #route for users
  devise_for :users

  #followers
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
  root 'pages#home'
  #stop file structure from being visible in the site
  get 'home' => 'pages#home'
  get 'user/:id' => 'pages#profile'
end
