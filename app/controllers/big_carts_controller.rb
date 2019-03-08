class BigCartsController < ApplicationController
  before_action :authenticate_user! 
    def show 
         @total = 0
         
         @current_big_cart = Cart.where(big_cart_id: current_user.numberCart)
          
    end

    def destroy
    current_user.carts.each do |cart|
        @carts = cart
    end
    if @carts.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
    end
end
