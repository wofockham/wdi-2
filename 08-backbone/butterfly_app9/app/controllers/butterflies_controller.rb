class ButterfliesController < ApplicationController
  # GET /butterflies
  # GET /butterflies.json
  def index
    @butterflies = Butterfly.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @butterflies }
    end
  end

  # GET /butterflies/1
  # GET /butterflies/1.json
  def show
    @butterfly = Butterfly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @butterfly }
    end
  end

  # GET /butterflies/new
  # GET /butterflies/new.json
  def new
    @butterfly = Butterfly.new
    @butterflies = Butterfly.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @butterfly }
    end
  end

  # GET /butterflies/1/edit
  def edit
    @butterfly = Butterfly.find(params[:id])
  end

  # POST /butterflies
  # POST /butterflies.json
  def create
    @butterfly = Butterfly.new(params[:butterfly])

    respond_to do |format|
      if @butterfly.save
        format.html { redirect_to @butterfly, notice: 'Butterfly was successfully created.' }
        format.js
        format.json { render json: @butterfly, status: :created, location: @butterfly }
      else
        format.html { render action: "new" }
        format.json { render json: @butterfly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /butterflies/1
  # PUT /butterflies/1.json
  def update
    @butterfly = Butterfly.find(params[:id])

    respond_to do |format|
      if @butterfly.update_attributes(params[:butterfly])
        format.html { redirect_to @butterfly, notice: 'Butterfly was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @butterfly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /butterflies/1
  # DELETE /butterflies/1.json
  def destroy
    @butterfly = Butterfly.find(params[:id])
    @butterfly.destroy

    respond_to do |format|
      format.html { redirect_to butterflies_url }
      format.json { head :no_content }
    end
  end
end
