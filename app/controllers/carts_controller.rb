class CartsController < ApplicationController
    
    def new
       @cart = Cart.new 
    end
    
    
    def create 
        @cart = Cart.new 
        @cart.user_id = current_user.id
        @cart.item_id = @item.id
        @cart.big_cart_id = current_user.big_carts.id

        if @carte.save 
            redirect_to items_path
        else
            redirect_to item_path(@item.id)
        end
        

    end


end
