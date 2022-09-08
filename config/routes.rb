Rails.application.routes.draw do
  resources :toys
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/dogs" => "dogs#index"
  get "/dogs/new" => "dogs#new"
  post "/dogs" => "dogs#create"
  get "/dogs/:id" => "dogs#show"
  get "/dogs/:id/edit" => "dogs#edit"
  patch "/dogs/:id" => "dogs#update"
end
