class OrdersController < ApplicationController
    def new
        @total = 0
        @current_big_cart = Cart.where(big_cart_id: current_user.numberCart)
        @current_big_cart.each do |cart|
            mdr = Item.find(cart.item_id)
            @total = @total + mdr.price 
           end
   
           @amount = @total
  end
  
  def create
    # Amount in cents
   @total = 0
   @current_big_cart = Cart.where(big_cart_id: current_user.numberCart)
   @current_big_cart.each do |cart|
       mdr = Item.find(cart.item_id)
       @total = @total + mdr.price 
      end
       

       @amount = @total.to_i
    
       
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    
    order = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount*100,
      description: 'Rails Stripe customer',
      currency: 'usd',
    })

    @order = Order.new
    @order.stripe_customer_id = customer.id
    @order.user_id = current_user.id
    if @order.save 
        current_user.numberCart = nil
        current_user.save
        redirect_to root_path
    end
  
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_user_big_cart_order_path(current_user.id,current_user.carts[0].big_cart_id)
  end
  end
  