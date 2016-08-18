class Channels::RootController < ApplicationController
  def show
    @channel = Channel.find(params[:channel_id])
    @team = @channel.team
    @message  = Message.new
    @messages = @channel.messages
  end

  def new
    @team = Team.find(params[:id])
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(allowed_params)
    if @channel.save
      @channel.users << @current_user
      redirect_to channel_path(@channel.id)
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:channel).permit(:name, :description, :team_id)
  end
end
