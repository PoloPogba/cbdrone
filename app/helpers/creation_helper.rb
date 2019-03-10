module CreationHelper
    
    def create
        @cart = Cart.new 
        @cart.user_id = current_user.id
        @cart.item_id = $id.id
        @cart.big_cart_id = current_user.numberCart
       
        
        
       if @cart.save 
            redirect_to root_path 
        else
            redirect_to new_user_session_path
        end
        

    end

  end