Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  get "about", to: "pages#about"
  get "posts/newpost", to: "posts#new"
  get "comments/new", to: "comments#new"

  post "posts", to: "posts#create"
  post "comments", to: "comments#create"

  resources :posts, :users, :blogs
end
