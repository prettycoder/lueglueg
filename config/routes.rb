Rails.application.routes.draw do
  root to: 'landing#index'
  # get 'landing/index'
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
