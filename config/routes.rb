Rails.application.routes.draw do
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
