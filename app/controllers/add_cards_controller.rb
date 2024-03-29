class AddCardsController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]
    
    before_action :authenticate_user!, only: [:index]

        def index
          @add_cards = current_user.add_cards
          @subcategories = Subcategory
        end
        
        def destroy
          @order.destroy
          redirect_to add_cards_path, notice: 'Order was successfully destroyed.'
        end


        def navigation_panel
            # Fetch the required data (e.g., cards_count) and assign it to an instance variable
            @cards_count = AddCard.sum(:cards_count)
          end
      
        private
      
        def set_order
          @order = AddCard.find(params[:id])
        end
      
        def order_params
          params.require(:order).permit(:user_id, :subcategory_id)
        end
end
