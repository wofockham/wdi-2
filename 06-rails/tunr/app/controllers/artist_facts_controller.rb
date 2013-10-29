class ArtistFactsController < ApplicationController
  # GET /artist_facts
  # GET /artist_facts.json
  def index
    @artist_facts = ArtistFact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artist_facts }
    end
  end

  # GET /artist_facts/1
  # GET /artist_facts/1.json
  def show
    @artist_fact = ArtistFact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artist_fact }
    end
  end

  # GET /artist_facts/new
  # GET /artist_facts/new.json
  def new
    @artist_fact = ArtistFact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist_fact }
    end
  end

  # GET /artist_facts/1/edit
  def edit
    @artist_fact = ArtistFact.find(params[:id])
  end

  def edit_all
    @artist_facts = ArtistFact.all
  end

  # POST /artist_facts
  # POST /artist_facts.json
  def create
    @artist_fact = ArtistFact.new(params[:artist_fact])

    respond_to do |format|
      if @artist_fact.save
        format.html { redirect_to @artist_fact, notice: 'Artist fact was successfully created.' }
        format.json { render json: @artist_fact, status: :created, location: @artist_fact }
      else
        format.html { render action: "new" }
        format.json { render json: @artist_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artist_facts/1
  # PUT /artist_facts/1.json
  def update
    @artist_fact = ArtistFact.find(params[:id])

    respond_to do |format|
      if @artist_fact.update_attributes(params[:artist_fact])
        format.html { redirect_to @artist_fact, notice: 'Artist fact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artist_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_all
    params[:artist_fact].each do |id, updated_fact|
      fact = ArtistFact.find id
      fact.update_attributes updated_fact
    end
    redirect_to artist_facts_path
  end

  # DELETE /artist_facts/1
  # DELETE /artist_facts/1.json
  def destroy
    @artist_fact = ArtistFact.find(params[:id])
    @artist_fact.destroy

    respond_to do |format|
      format.html { redirect_to artist_facts_url }
      format.json { head :no_content }
    end
  end
end
