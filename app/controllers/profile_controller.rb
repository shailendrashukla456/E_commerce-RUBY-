class ProfileController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :destroy]
    
    def index
        @users = [current_user]
    end
    
    def edit
    
    end
    
    def update
        respond_to do |format|
          if @user.update(user_params)
            format.html { redirect_to @user, notice: 'User was successfully updated.' }
            
          else
            format.html { render :edit }
           
          end
        end
    end
    
      def destroy
        @user.destroy
        redirect_to users_url, notice: 'User was successfully destroyed.'
      end
    
      private
    
      def set_user
        @user = User.find(params[:id])
      end
    
      def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :contact, :address)
      end
    end

