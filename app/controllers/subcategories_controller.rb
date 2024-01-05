class SubcategoriesController < ApplicationController
    
    def index
        @category = Category.find(params[:category_id])
        @subcategories = @category.subcategories
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
        @user = User.find(params[:id])
        respond_to do |format|
          format.html
          format.pdf do
            render pdf: 'create_order', template: 'subcategories/create_order.html.erb', layout: 'pdf_layout', filename: 'your_file_name.pdf'
          end
        end
        # Your remaining code
      end
 
    private

    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    def subcategory_params
      params.require(:subcategory).permit(:category_id, :subcategory_name, :description, :picture, :price)
    end




end
