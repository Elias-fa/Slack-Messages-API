class Api::MessagesController < ApplicationController
  before_actio do
    request.format = :json
  end

  def index
    @channel = Channel.find(params[:id])
    @messages = @channel.messages
  end

  def create
    @channel = Channel.find(params[:id])

    @message = Message.new(allowed_params)
    @message.channel = @channel
    @message.user = @current_user
    @message.save
  end

  private

  def allowed_params
    params.require(:message).permit(:body)
  end
end
