class SubcategoriesController < ApplicationController
    
    def index
        @category = Category.find(params[:category_id])
        @subcategories = @category.subcategories

        @categories = Category.all
      end
    
      def show
        @subcategory = Subcategory.find(params[:id])
      end

    
    
      def new_order
        @subcategories = Subcategory.find(params[:id])
        amount_in_paise = (@subcategories.price * 100).to_i
        razorpay_client = Razorpay::Entity.new(
          api_key: 'rzp_test_erxA40Dbls3shH',
          api_secret: 'lgTaGjfpzoJsNSEj4vpozXaI'
        )
        
       
      end
    
      def create_order
        @subcategories = Subcategory.find(params[:id]) 
        @order = Order.new(subcategory_id: @subcategories.id, user_id: current_user.id)
        
        if @order.save
          if @subcategories.present?
            flash[:success] = 'Order Confirm successfully'
          else
            flash[:success] = 'Something wen wrong'
          end
          redirect_to orders_path, notice: 'Order Not Confirm'
        else
          render :new_order
        end
      end



      def add_card
        @subcategories = Subcategory.find(params[:id]) 
        @order = AddCard.new(subcategory_id: @subcategories.id, user_id: current_user.id )
        if @order.save
          
          flash[:notice] = 'Card added successfully'
          redirect_to category_subcategories_path
        else
          render :new_order
        end
      end
      
 
    private

    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    def subcategory_params
      params.permit(:category_id, :subcategory_name, :description, :picture, :price)
    end




end
