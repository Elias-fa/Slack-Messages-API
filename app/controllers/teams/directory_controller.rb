class Teams::DirectoryController < ApplicationController
  def index
    @teams = Team.all
  end

  def add
    @team = Team.find(params[:id])
    @user_team = UserTeam.where(user_id: @current_user.id, team_id: @team.id)

    @team.users << @current_user if @user_team.empty?
    redirect_to team_path(@team.id)
  end
end
