Rails.application.routes.draw do
devise_for :users 

resources :items 
 
root "items#index"



resources :users do 
    resources :carts  
    resources :big_carts
end

end
