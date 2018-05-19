Rails.application.routes.draw do
  resources :userposts
  resources :posts
  devise_for :users
  get 'profile/index'
  get 'home/introduction'
  get 'home/index'
  root  'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
