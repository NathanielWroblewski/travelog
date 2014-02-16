class StatesController < ApplicationController
  helper ExperienceHelper
  before_filter :authenticate_admin, only: [:edit, :update]

  def index
    @states = State.visited
  end

  def show
    @state = State.find_by(abbr: params[:abbr]) if params[:abbr]
    @experiences = @state.experiences.order(:sorted_position)
  end

  def edit
    @state = State.find_by(abbr: params[:id])
    @experiences = @state.experiences.order(:sorted_position)
  end

  def update
    ordering = JSON.parse(params[:data])
    ordering.each do |pair|
      experience = Experience.find(pair[1])
      experience.update_attributes(sorted_position: pair[0])
    end
    render json: { success: true }
  end

  private

  def authenticate_admin
    redirect_to root_path unless current_user.try(:admin?)
  end

end
