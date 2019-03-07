module CreationHelper
    
    def create
        @cart = Cart.new 
        @cart.user_id = current_user.id
        @cart.item_id = current_user.id
        @cart.big_cart_id = current_user.big_carts[0].id
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts @carts
        @cart.save
       if @cart.save 
            redirect_to root_path 
        else
            redirect_to root_path
        end
        

    end

  end