class OrbituarysitesController < ApplicationController
  # GET /orbituarysites
  # GET /orbituarysites.json
  before_filter :authenticate_user!
  
  def index
    @orbituarysites = Orbituarysite.all
    @orbituarysite = current_user.orbituarysites.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orbituarysites }
    end
  end

  # GET /orbituarysites/1
  # GET /orbituarysites/1.json
  def show
    @orbituarysite = Orbituarysite.find(params[:id])
    @notice_display = @orbituarysite.notice_displays.build
    @notice_event_contact = @notice_display.notice_event_contacts.build
    @notice_event_place = @notice_display.notice_event_places.build
    @history = @orbituarysite.histories.build
    @memory = @orbituarysite.memories.build
    @condolence = @orbituarysite.condolences.build
    @orbiturer_share_image = @orbituarysite.orbiturer_share_images.build
    @notice_event_place_maps = @orbituarysite.notice_displays.first.notice_event_places.to_gmaps4rails
    @timeline = @orbituarysite.timelines.build
    Rails.logger.info @notice_event_place_maps
    
    @timelines = Timeline.where(:orbituarysite_id => @orbituarysite.id)
    
#    event_place = @notice_display.notice_event_places.build
#    @orbituarysite = Orbituarysite.find(params[:orbituarysite])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: json_out = {
    "timeline"=>
    {
        "headline"=>"The Main Timeline Headline Goes here",
        "type"=>"default",
        "text"=>"<p>Intro body text goes here, some HTML is ok</p>",
        "asset"=> {
            "media"=>"http://www.exglam.com/wp-content/uploads/2013/02/Kajal-agarwal-in-Blue-and-white-Fade-Short-with-white-Top-and-a-Blue-bow-in-hair.jpg",
            "credit"=>"Credit Name Goes Here",
            "caption"=>"Caption text goes here"
        },
        
        "date"=> @timelines.map { |timeline| {"startDate" => timeline.startdate.strftime("%Y,%m,%d"),"endDate" => timeline.enddate.strftime("%Y,%m,%d"),"headline" => timeline.headline,"text" => timeline.content, "asset" => {"media" => timeline.media}}},

        
        "era"=> [
            {
                "startDate"=>"2011,12,10",
                "endDate"=>"2011,12,11",
                "headline"=>"Headline Goes Here",
                "text"=>"<p>Body text goes here, some HTML is OK</p>",
                "tag"=>"This is Optional"
            }

        ]
    }
} }
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
