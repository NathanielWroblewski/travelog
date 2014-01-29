class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def show

  end

end
