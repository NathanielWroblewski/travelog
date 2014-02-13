class StatesController < ApplicationController
  helper ExperienceHelper

  def index
    @states = State.visited.pluck(:abbr)
  end

  def show
    @state = State.find_by(abbr: params[:abbr]) if params[:abbr]
  end

end
