Rails.application.routes.draw do
    devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

resources :items

root "items#index"



resources :users do
    resources :carts
    resources :big_carts do 
        resources :orders
    end
end


end
