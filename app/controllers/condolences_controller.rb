class CondolencesController < ApplicationController
  # GET /condolences
  # GET /condolences.json
  before_filter :authenticate_user!
  def index
    @condolences = Condolence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @condolences }
    end
  end

  # GET /condolences/1
  # GET /condolences/1.json
  def show
    @condolence = Condolence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @condolence }
    end
  end

  # GET /condolences/new
  # GET /condolences/new.json
  def new
    @condolence = Condolence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @condolence }
    end
  end

  # GET /condolences/1/edit
  def edit
    @condolence = Condolence.find(params[:id])
  end

  # POST /condolences
  # POST /condolences.json
  def create
    @condolence = Condolence.new(params[:condolence])

    respond_to do |format|
      if @condolence.save
        format.html { redirect_to @condolence, notice: 'Condolence was successfully created.' }
        format.json { render json: @condolence, status: :created, location: @condolence }
      else
        format.html { render action: "new" }
        format.json { render json: @condolence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /condolences/1
  # PUT /condolences/1.json
  def update
    @condolence = Condolence.find(params[:id])

    respond_to do |format|
      if @condolence.update_attributes(params[:condolence])
        format.html { redirect_to @condolence, notice: 'Condolence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @condolence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condolences/1
  # DELETE /condolences/1.json
  def destroy
    @condolence = Condolence.find(params[:id])
    @condolence.destroy

    respond_to do |format|
      format.html { redirect_to condolences_url }
      format.json { head :no_content }
    end
  end
end
