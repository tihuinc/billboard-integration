class SightingsController < ApplicationController
  # GET /sightings
  # GET /sightings.json
  def index
    @sightings = Sighting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sightings }
    end
  end

  # GET /sightings/1
  # GET /sightings/1.json
  def show
    @sighting = Sighting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sighting }
    end
  end

  # GET /sightings/new
  # GET /sightings/new.json
  def new
    @sighting = Sighting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sighting }
    end
  end

  # GET /sightings/1/edit
  def edit
    @sighting = Sighting.find(params[:id])
  end

  # POST /sightings 
  # POST /sightings.json

  def create
    if params[:transmitter_name] && params[:receiver_name]
      @sighting = Sighting.new(:transmitter_name => params[:transmitter_name], :receiver_name => params[:receiver_name])
    end

    if @sighting && @sighting.save
      redirect_to @sighting, notice: 'Sighting event was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /sightings/1
  # PUT /sightings/1.json
  def update
    @sighting = Sighting.find(params[:id])

    respond_to do |format|
      if @sighting.update_attributes(params[:sighting])
        format.html { redirect_to @sighting, notice: 'Sighting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sightings/1
  # DELETE /sightings/1.json
  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy

    respond_to do |format|
      format.html { redirect_to sightings_url }
      format.json { head :no_content }
    end
  end
end
