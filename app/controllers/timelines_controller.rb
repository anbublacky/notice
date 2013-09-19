class TimelinesController < ApplicationController
  # GET /timelines
  # GET /timelines.json
  def index
    @timelines = Timeline.all
    @orbituarysite = current_user.orbituarysites.new    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: json_out = {
    "timeline"=>
    {
        "headline"=>"The Main Timeline Headline Goes here",
        "type"=>"default",
        "text"=>"<p>Intro body text goes here, some HTML is ok</p>",
        "asset"=> {
            "media"=>"",
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
  def timeline
  end

  # GET /timelines/1
  # GET /timelines/1.json
  def show
    @timeline = Timeline.find(params[:id])
    @orbituarysite = current_user.orbituarysites.new    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timeline }
    end
  end

  # GET /timelines/new
  # GET /timelines/new.json
  def new
    @tln = Orbituarysite.find(params[:id])    
    @timeline = @tln.timelines.new
    @orbituarysite = current_user.orbituarysites.new    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timeline }
    end
  end

  # GET /timelines/1/edit
  def edit
    @timeline = Timeline.find(params[:id])
    @orbituarysite = current_user.orbituarysites.new    
  end

  # POST /timelines
  # POST /timelines.json
  def create
    @timeline = Timeline.new(params[:timeline])
    @orbituarysite = @timeline.orbituarysite

    respond_to do |format|
      if @timeline.save
        format.html { redirect_to @orbituarysite, notice: 'Timeline was successfully created.' }
        format.json { render json: @timeline, status: :created, location: @timeline }
      else
        format.html { render action: "new" }
        format.json { render json: @timeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timelines/1
  # PUT /timelines/1.json
  def update
    @timeline = Timeline.find(params[:id])

    respond_to do |format|
      if @timeline.update_attributes(params[:timeline])
        format.html { redirect_to @timeline, notice: 'Timeline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timelines/1
  # DELETE /timelines/1.json
  def destroy
    @timeline = Timeline.find(params[:id])
    @timeline.destroy

    respond_to do |format|
      format.html { redirect_to timelines_url }
      format.json { head :no_content }
    end
  end
end
