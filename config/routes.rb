Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: "sessiones#destroy"

  get '/' => 'products#all'
  resources :users, only: [:create, :new, :show, :destroy, :index] 
  resources :products, only: [:create, :new, :show, :destroy, :edit, :update, :index] 
  resources :biddings, only: [:create, :new, :show, :destroy, :edit, :update, :index]
end
