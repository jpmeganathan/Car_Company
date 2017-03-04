Rails.application.routes.draw do
  resources :services
  resources :parts
  resources :parts_useds
  resources :service_mechanics
  resources :service_tickets
  resources :mechanics
  resources :sales
  resources :sale_people
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources 'welcome'
  resources 'customers'
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
