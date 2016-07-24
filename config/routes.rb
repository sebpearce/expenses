Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'

  get '/capture', to: 'capture#index'
  get '/capturejson', to: 'capture_json#index'

  resources :expense_sources
  resources :income_sources
  resources :expense_items
  resources :income_items

end
