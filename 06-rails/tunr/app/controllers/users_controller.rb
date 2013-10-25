class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = @authenticated
    render :new
  end

  def update
    @user = @authenticated
    if @user.update_attributes params[:user]
      redirect_to root_path
    else
      render :new
    end
  end
end
