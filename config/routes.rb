Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  resources :userposts
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  devise_for :users
  get 'profile/index'
  get 'home/introduction'
  get 'home/index'
  root  'home#index'
  post 'post/:post_id/like' => 'posts#like_toggle'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
