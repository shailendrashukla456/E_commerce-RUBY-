class OrdersController < ApplicationController
        before_action :set_order, only: [:show, :edit, :update, :destroy]
      
        def index
          @orders = current_user.orders
        end
      
        def show
        end
        
      
        def create

          @order = Order.new(order_params)
      
          if @order.save
            redirect_to @order, notice: 'Order was successfully created.'
          else
            render :new
          end
        end
      
        def edit
        end
      
        def update
          if @order.update(order_params)
            redirect_to @order, notice: 'Order was successfully updated.'
          else
            render :edit
          end
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
