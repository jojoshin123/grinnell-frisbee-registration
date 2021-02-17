Rails.application.routes.draw do
  root 'static_pages#home'
  # get 'static_pages/home'
  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about"
  # get '/captains', to: "captains#captains"
  resources :captains
end
