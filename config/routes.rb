Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root 'posts#index'
  resources :orders

  resources :posts do
  	resources :charge
    resource :map
  end
end