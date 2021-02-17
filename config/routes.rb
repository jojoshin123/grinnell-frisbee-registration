Rails.application.routes.draw do
  root 'static_pages#home'
  # get 'static_pages/home'
  get '/roster', to: "static_pages#roster"
  get '/about', to: "static_pages#about"
  # get '/captains', to: "captains#captains"
  resources :captains
end
