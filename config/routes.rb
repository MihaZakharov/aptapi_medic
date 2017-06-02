Rails.application.routes.draw do
 # resources :groups
devise_scope :user do
  get 'users/show', to: 'users/registrations#show'
end
  devise_for :users, controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }
 # devise_for :users
#  resources :products
  
  get 'products/m/all(:id)', to: 'products#all'
  post 'products/m/searching', to: 'products#searching'
  get 'products/m/:id',      to: 'products#showproductsfromgroup'

  get 'groups/m/all',   to: 'groups#all'
  get 'groups/m/alln',   to: 'groups#alln'
  get 'groups/m/:id',        to: 'groups#showgrp'   

  get 'pharmacies/m/all(:id)',   to: 'pharmacies#all'

#  post 'makeinv/:invoice',   to: 'makeinv#all'
  post 'm/makeinv',   to: 'makeinv#all'
  post 'm/getinvoice',        to: 'getinvoice#showinv'   
  post 'm/getinvoice/detail',        to: 'getinvoice#showdetailinvoice'   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
