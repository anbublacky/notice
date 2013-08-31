class OrbiturerShareImagesController < ApplicationController
  # GET /orbiturer_share_images
  # GET /orbiturer_share_images.json
  before_filter :authenticate_user!  
  def index
    @orbiturer_share_images = OrbiturerShareImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orbiturer_share_images }
    end
  end

  # GET /orbiturer_share_images/1
  # GET /orbiturer_share_images/1.json
  def show
    @orbiturer_share_image = OrbiturerShareImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orbiturer_share_image }
    end
  end

  # GET /orbiturer_share_images/new
  # GET /orbiturer_share_images/new.json
  def new
    @orbiturer_share_image = OrbiturerShareImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orbiturer_share_image }
    end
  end

  # GET /orbiturer_share_images/1/edit
  def edit
    @orbiturer_share_image = OrbiturerShareImage.find(params[:id])
  end

  # POST /orbiturer_share_images
  # POST /orbiturer_share_images.json
  def create
    @orbiturer_share_image = OrbiturerShareImage.new(params[:orbiturer_share_image])

    respond_to do |format|
      if @orbiturer_share_image.save
        format.html { redirect_to @orbiturer_share_image, notice: 'Orbiturer share image was successfully created.' }
        format.json { render json: @orbiturer_share_image, status: :created, location: @orbiturer_share_image }
      else
        format.html { render action: "new" }
        format.json { render json: @orbiturer_share_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orbiturer_share_images/1
  # PUT /orbiturer_share_images/1.json
  def update
    @orbiturer_share_image = OrbiturerShareImage.find(params[:id])

    respond_to do |format|
      if @orbiturer_share_image.update_attributes(params[:orbiturer_share_image])
        format.html { redirect_to @orbiturer_share_image, notice: 'Orbiturer share image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orbiturer_share_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orbiturer_share_images/1
  # DELETE /orbiturer_share_images/1.json
  def destroy
    @orbiturer_share_image = OrbiturerShareImage.find(params[:id])
    @orbiturer_share_image.destroy

    respond_to do |format|
      format.html { redirect_to orbiturer_share_images_url }
      format.json { head :no_content }
    end
  end
end
