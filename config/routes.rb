Rails.application.routes.draw do
  
  get "/" => "home#top"

  post "users/create" => "users#create"
  get "users/new" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"

  post "goods/:post_id/create" => "goods#create"
  post "goods/:post_id/destroy" => "goods#destroy"

  get "login" => "users#login_new"
  post "login" => "users#login"
  post "logout" => "users#logout"

  resources :posts
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
