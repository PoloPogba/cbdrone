class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: 
    
    :devise_controller?  
    protected  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :numero_telephone, :adresse])  
    end
    
def create_cart
while current_user.numberCart == nil do 
    @Big = BigCart.create
    @lol = current_user
    @lol.numberCart = @Big.id
    @lol.save
   
    
end
end




end
