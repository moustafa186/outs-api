Rails.application.routes.draw do
  resources :places, except: [:destroy]
  root 'places#index'
end
