class Channels::DirectoryController < ApplicatonController
  before_acton :require_login

  def index
    @team = Team.find(params[:id])
    @channels = @team.channels
  end

  def add
    @channel = Channel.find(params[:id])
    @user_channels = UserChannel.where(channel_id: @channel.id, user_id: @current_user.id)

    @channel.users << @current_user if @user_channels.empty?

    redirect_to channel_path(@channel.id)
  end
end
