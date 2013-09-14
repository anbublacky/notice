class OrbituarysitesController < ApplicationController
  # GET /orbituarysites
  # GET /orbituarysites.json
  before_filter :authenticate_user!
  
  def index
    @orbituarysites = Orbituarysite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orbituarysites }
    end
  end

  # GET /orbituarysites/1
  # GET /orbituarysites/1.json
  def show
    @orbituarysite = Orbituarysite.find(params[:id])
    @notice_display = @orbituarysite.notice_display.build
    @notice_event_contact = @notice_display.notice_event_contacts.build
    @notice_event_place = @notice_display.notice_event_places.build
    @history = @orbituarysite.history.build
    @memory = @orbituarysite.memories.build
    @condolence = @orbituarysite.condolences.build
    @orbiturer_share_image = @orbituarysite.orbiturer_share_images.build
    @notice_event_place_maps = @notice_event_place.to_gmaps4rails
#    event_place = @notice_display.notice_event_places.build
#    @orbituarysite = Orbituarysite.find(params[:orbituarysite])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orbituarysite }
    end
  end

  # GET /orbituarysites/new
  # GET /orbituarysites/new.json
  def new
    @orbituarysite = current_user.orbituarysites.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orbituarysite }
    end
  end

  # GET /orbituarysites/1/edit
  def edit
    @orbituarysite = Orbituarysite.find(params[:id])
  end

  # POST /orbituarysites
  # POST /orbituarysites.json
  def create
    @orbituarysite = Orbituarysite.new(params[:orbituarysite])

    respond_to do |format|
      if @orbituarysite.save
        format.html { redirect_to @orbituarysite, notice: 'Orbituarysite was successfully created.' }
        format.json { render json: @orbituarysite, status: :created, location: @orbituarysite }
      else
        format.html { render action: "new" }
        format.json { render json: @orbituarysite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orbituarysites/1
  # PUT /orbituarysites/1.json
  def update
    @orbituarysite = Orbituarysite.find(params[:id])

    respond_to do |format|
      if @orbituarysite.update_attributes(params[:orbituarysite])
        format.html { redirect_to @orbituarysite, notice: 'Orbituarysite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orbituarysite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orbituarysites/1
  # DELETE /orbituarysites/1.json
  def destroy
    @orbituarysite = Orbituarysite.find(params[:id])
    @orbituarysite.destroy

    respond_to do |format|
      format.html { redirect_to orbituarysites_url }
      format.json { head :no_content }
    end
  end
end
