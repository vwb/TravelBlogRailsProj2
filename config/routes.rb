Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  get "about", to: "pages#about"

  get "posts/newpost", to: "posts#new"

  post "posts", to: "posts#create"

  post "comments", to: "comments#create"
  
  get "comments/new", to: "comments#new"

  #resources :posts do
  	#resources :comments
  #end

  resources :users, :blogs, :posts

end
