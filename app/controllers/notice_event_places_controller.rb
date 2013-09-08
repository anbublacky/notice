class NoticeEventPlacesController < ApplicationController
  # GET /notice_event_places
  # GET /notice_event_places.json
  before_filter :authenticate_user!  
  def index
    @notice_event_places = NoticeEventPlace.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notice_event_places }
    end
  end

  # GET /notice_event_places/1
  # GET /notice_event_places/1.json
  def show
    @notice_event_place = NoticeEventPlace.find(params[:id])
    @orbituarysite = current_user.orbituarysites.new    
    @json = NoticeEventPlace.all.to_gmaps4rails    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice_event_place }
    end
  end

  # GET /notice_event_places/new
  # GET /notice_event_places/new.json
  def new
    @notice_event_place = NoticeEventPlace.new
    @orbituarysite = current_user.orbituarysites.new    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice_event_place }
    end
  end

  # GET /notice_event_places/1/edit
  def edit
    @notice_event_place = NoticeEventPlace.find(params[:id])
  end

  # POST /notice_event_places
  # POST /notice_event_places.json
  def create
    @notice_event_place = NoticeEventPlace.new(params[:notice_event_place])
    @orbituarysite = current_user.orbituarysites.new    
#    @json = NoticeEventPlace.all.to_gmaps4rails        

    respond_to do |format|
      if @notice_event_place.save
        format.html { redirect_to @notice_event_place, notice: 'Notice event place was successfully created.' }
        format.json { render json: @notice_event_place, status: :created, location: @notice_event_place }
      else
        format.html { render action: "new" }
        format.json { render json: @notice_event_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notice_event_places/1
  # PUT /notice_event_places/1.json
  def update
    @notice_event_place = NoticeEventPlace.find(params[:id])

    respond_to do |format|
      if @notice_event_place.update_attributes(params[:notice_event_place])
        format.html { redirect_to @notice_event_place, notice: 'Notice event place was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notice_event_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_event_places/1
  # DELETE /notice_event_places/1.json
  def destroy
    @notice_event_place = NoticeEventPlace.find(params[:id])
    @notice_event_place.destroy

    respond_to do |format|
      format.html { redirect_to notice_event_places_url }
      format.json { head :no_content }
    end
  end
end
