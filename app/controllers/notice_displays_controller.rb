class NoticeDisplaysController < ApplicationController
  # GET /notice_displays
  # GET /notice_displays.json
  before_filter :authenticate_user!  
  
  def index
    @notice_displays = NoticeDisplay.all
    @orbituarysite = current_user.orbituarysites.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notice_displays }
    end
  end

  # GET /notice_displays/1
  # GET /notice_displays/1.json
  def show
    @notice_display = NoticeDisplay.find(params[:id])
#    @orbituarysite = current_user.orbituarysites.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice_display }
    end
  end

  # GET /notice_displays/new
  # GET /notice_displays/new.json
  def new
    Rails.logger.info params[:id]
    @orbituary = Orbituarysite.find(params[:id])
    @notice_display = @orbituary.notice_displays.new
#    @notice_display = current_user.orbituarysites.first.notice_display.new    
#    @orbituarysite = current_user.orbituarysites.new
#    @notice_display.notice_event_places.build 
    @notice_event_contact = @notice_display.notice_event_contacts.new
    @notice_event_place = @notice_display.notice_event_places.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice_display }
    end
  end

  # GET /notice_displays/1/edit
  def edit
    Rails.logger.info params[:id]
    @orbituary = Orbituarysite.find(params[:id])
    @notice_display = NoticeDisplay.find_by(:orbituarysite_id => @orbituary.id)
    @orbituarysite = current_user.orbituarysites.new    
  end

  # POST /notice_displays
  # POST /notice_displays.json
  def create
#    @orbituary = Orbituarysite.find(params[:id])
    @notice_display = NoticeDisplay.new(params[:notice_display])
    @orbituarysite = @notice_display.orbituarysite

    respond_to do |format|
      if @notice_display.save
        Rails.logger.info params[:notice_display]
        Rails.logger.info params[:notice_display][:notice_event_contacts_attributes][:name]
        Rails.logger.info params[:notice_display][:notice_event_place]
        params[:notice_display][:notice_event_contacts_attributes].each do |contacts_attrs|
#          Rails.logger.info contacts_attrs.last
          Rails.logger.info contacts_attrs.last
          @notice_event_contact = @notice_display.notice_event_contacts.build(contacts_attrs.last)
          @notice_event_contact.update_attributes(:id => @notice_display.id)
        end
        Rails.logger.info params[:notice_display][:notice_event_place]
        params[:notice_display][:notice_event_places_attributes].each do |contacts_places|
#          Rails.logger.info contacts_attrs.last
          Rails.logger.info contacts_places.last
#          @notice_event_place = @notice_display.notice_event_places.build(contacts_places.last)
#          @notice_event_place.update_attributes(:id => @notice_display.id)
#          @orbituarysite.update_attributes(:latitude => @notice_event_place.latitude, :longitude => @notice_event_place.longitude)
        end
        
        format.html { redirect_to @orbituarysite, notice: 'Notice display was successfully created.' }
        format.json { render json: @orbituarysite, status: :created, location: @notice_display }
      else
        format.html { render action: "new" }
        format.json { render json: @notice_display.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notice_displays/1
  # PUT /notice_displays/1.json
  def update
    @notice_display = NoticeDisplay.find(params[:id])
    @orbituarysite = @notice_display.orbituarysite

    respond_to do |format|
      if @notice_display.update_attributes(params[:notice_display])
        format.html { redirect_to @orbituarysite, notice: 'Notice display was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notice_display.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_displays/1
  # DELETE /notice_displays/1.json
  def destroy
    @notice_display = NoticeDisplay.find(params[:id])
    @notice_display.destroy

    respond_to do |format|
      format.html { redirect_to notice_displays_url }
      format.json { head :no_content }
    end
  end
end
