class NoticeDisplaysController < ApplicationController
  # GET /notice_displays
  # GET /notice_displays.json
  before_filter :authenticate_user!  
  def index
    @notice_displays = NoticeDisplay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notice_displays }
    end
  end

  # GET /notice_displays/1
  # GET /notice_displays/1.json
  def show
    @notice_display = NoticeDisplay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice_display }
    end
  end

  # GET /notice_displays/new
  # GET /notice_displays/new.json
  def new
    @notice_display = NoticeDisplay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice_display }
    end
  end

  # GET /notice_displays/1/edit
  def edit
    @notice_display = NoticeDisplay.find(params[:id])
  end

  # POST /notice_displays
  # POST /notice_displays.json
  def create
    @notice_display = NoticeDisplay.new(params[:notice_display])

    respond_to do |format|
      if @notice_display.save
        format.html { redirect_to @notice_display, notice: 'Notice display was successfully created.' }
        format.json { render json: @notice_display, status: :created, location: @notice_display }
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

    respond_to do |format|
      if @notice_display.update_attributes(params[:notice_display])
        format.html { redirect_to @notice_display, notice: 'Notice display was successfully updated.' }
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
