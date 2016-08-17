class Teams::RootController < ApplicationController
  before_action :require_login

  def index
    @teams = @current_user.teams
  end

  def show
    @team = Team.find(params[:id])
    @channels = @current_user.channels.by_team(@team)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(allowed_params)
    if @team.save
      @current_user.teams << @team
      redirect_to teams_path
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:team).permt(:name, :description)
  end
end
