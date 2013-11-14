class PrioritiesController < ApplicationController
  def index
    if @current_user.present?
      @priorities = @current_user.priorities
    else
      redirect_to root_path
    end
  end

  def create
    name = params[:name]
    color = params[:color]
    value = params[:value]
    id = params[:id]

    if id.present?
      priority = Priority.find(id)
      priority.color = color
      priority.value = value
      priority.name = name
      priority.save
    else
      priority = Priority.create(:name => name, :color => color, :value => value)
      @current_user.priorities << priority
    end

    render :json => priority
  end
end
