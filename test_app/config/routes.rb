Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bus_stops, except: [:update, :edit, :destroy]
  root 'bus_stops#index'
end
