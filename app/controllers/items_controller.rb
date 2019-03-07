class ItemsController < ApplicationController

    def index 
        @items = Item.all
    end

   
    def show 
        
        @id_item = Item.find(params[:id])
        

         
    end
end
