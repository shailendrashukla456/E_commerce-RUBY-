class OrdersController < ApplicationController
        before_action :set_order, only: [:show, :edit, :update, :destroy]
        before_action :authenticate_user!, only: [:index]
    

        def index
          @orders = current_user.orders
          @subcategories = Subcategory
        end
      
        def show
        end
        
      
      
        def destroy
          @order.destroy
          redirect_to orders_url, notice: 'Order was successfully destroyed.'
        end
      
        private
      
        def set_order
          @order = Order.find(params[:id])
        end
      
        def order_params
          params.require(:order).permit(:user_id, :subcategory_id)
        end
end
