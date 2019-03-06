Rails.application.routes.draw do
devise_for :users 

resources :items
root "items#index"
resources :carts
resources :big_carts
resources :users

end
