class PrioritiesController < ApplicationController
  def index
    @priorities = @current_user.priorities
  end
end
