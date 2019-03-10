Rails.application.routes.draw do
    devise_for :users 

root "items#index"
resources :items 
resources :categories


get '/contact', to: 'staticpages#contact'
get '/mentions-legales', to: 'staticpages#mentions'
get '/conditions-générales-ventes', to: 'staticpages#conditions'


resources :users, only: [:show] do
    resources :carts
    resources :big_carts do 
        resources :orders
    end
end


end
