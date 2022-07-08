Rails.application.routes.draw do
  resources :testqs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#home'
  resources :quotes
  resources :contacts
  get 'pages/back'
  get 'pages/residential'
  get 'pages/commercial'
  get 'pages/quote'
  get 'residential', to: 'pages#residential'
  get 'commercial', to: 'pages#commercial'
  get 'quote', to: 'quotes#new'
  get 'admin', to: 'pages#admin'
  post '/contacts', to: 'home#create'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Route for Homepage

end