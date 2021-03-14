Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  # get 'static_pages/home'
  delete '/players', to: "players#destroy"
  get '/roster', to: "players#roster"
  get '/about', to: "static_pages#about"
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#create"
  delete '/login', to: "sessions#destroy"
  resources :captains
  resources :players
  resources :session
end
