Rails.application.routes.draw do

  resources :articles do
    resources :microposts, only:[:create, :destroy]
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  root 'top_pages#home'
  resources :users
end
