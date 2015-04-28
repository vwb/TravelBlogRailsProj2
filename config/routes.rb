Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  get "about", to: "pages#about"
  get "posts/newpost", to: "posts#new"

  post "posts", to: "posts#create"

  resources :posts, :users, :blogs
end
