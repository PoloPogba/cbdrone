Rails.application.routes.draw do
    devise_for :users 

resources :items

root "items#index"



resources :users, only: [:show] do
    resources :carts
    resources :big_carts do 
        resources :orders
    end
end


end
