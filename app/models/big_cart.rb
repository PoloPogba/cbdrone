class BigCart < ApplicationRecord
    

    def show 

      @carts = Cart.all
    end
end
