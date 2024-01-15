class MessagesController < ApplicationController

  def create
    
    @current_user = current_user
    @message = @current_user.messages.create(
      body: msg_params[:body],
      room_id: params[:room_id])
      AdminUser.first.messages.create(body: "Thank you #{current_user.first_name} for your response", room_id: params[:room_id])
    redirect_to orders_path(params[:room_id])
    
  end


  private

  def msg_params
    params.require(:message).permit(:body)
  end
end
