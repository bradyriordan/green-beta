Rails.application.routes.draw do
  resources :contacts
  devise_for :users
  root to: 'public#home'
  get 'public/home'
  get 'public/contact'
  resources :companies   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
