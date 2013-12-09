class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.reverse

    respond_to do |format|
      format.html
      format.json { render :json => @fruits }
    end
  end

  def show
    @fruit = Fruit.find(params[:id])
  end

  def new
    @fruit = Fruit.new
  end

  def create
    @fruit = Fruit.new(params[:fruit])
    if @fruit.save
      redirect_to fruit_path(@fruit)
    else
      render :new
    end
  end
end
