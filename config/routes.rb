Rails.application.routes.draw do
  get 'pick', to: 'articles#pick'
  post '/pick', to: 'articles#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  root 'top_pages#home'
  get '/signup' => 'users#new'
  resources :users
end
