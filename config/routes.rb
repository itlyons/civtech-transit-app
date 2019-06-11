Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bus_stops, except: [:update, :edit, :destroy]
  root 'bus_stops#index'
  get '/search' => 'bus_stops#search', :as => 'search_page'

  resources :reports, except: [:update, :edit, :destroy]
  root 'reports#index'
end
