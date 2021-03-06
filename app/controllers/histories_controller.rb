class HistoriesController < ApplicationController
  # GET /histories
  # GET /histories.json
  before_filter :authenticate_user!  
  def index
    @histories = History.all
    @orbituarysite = current_user.orbituarysites.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @histories }
    end
  end

  # GET /histories/1
  # GET /histories/1.json
  def show
    @history = History.find(params[:id])
    @orbituarysite = current_user.orbituarysites.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @history }
    end
  end

  # GET /histories/new
  # GET /histories/new.json
  def new
    @hist = Orbituarysite.find(params[:id])    
    @history = @hist.histories.new
    @orbituarysite = current_user.orbituarysites.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @history }
    end
  end

  # GET /histories/1/edit
  def edit
    @hist = Orbituarysite.find(params[:id])    
    @history = History.find_by(:orbituarysite_id => @hist.id)
    @orbituarysite = current_user.orbituarysites.new
    #respond_to do |format|
      #if @history.save
        #format.html{ redirect_to @orbituarysite, notice: "History was updated successfully"}
        #format.json { render json: @orbituarysite, status: :created, location: @history } 
      #else
        #format.html { render action: "new"}
        #format.json { render json: @history.errors, status: :unprocessable_entity}
      #end
    #end
  end

  # POST /histories
  # POST /histories.json
  def create
    @history = History.new(params[:history])
    @orbituarysite = @history.orbituarysite
    respond_to do |format|
      if @history.save
        format.html { redirect_to @orbituarysite, notice: 'History was successfully created.' }
        format.json { render json: @orbituarysite, status: :created, location: @history }
      else
        format.html { render action: "new" }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /histories/1
  # PUT /histories/1.json
  def update
    @history = History.find(params[:id])

    respond_to do |format|
      if @history.update_attributes(params[:history])
        format.html { redirect_to @history, notice: 'History was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /histories/1
  # DELETE /histories/1.json
  def destroy
    @history = History.find(params[:id])
    @history.destroy
    @orbituarysite = @history.orbituarysite

    respond_to do |format|
      format.html { redirect_to @orbituarysite }
      format.json { head :no_content }
    end
  end
end
