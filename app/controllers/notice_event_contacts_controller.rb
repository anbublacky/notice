class NoticeEventContactsController < ApplicationController
  # GET /notice_event_contacts
  # GET /notice_event_contacts.json
  before_filter :authenticate_user!  
  def index
    @notice_event_contacts = NoticeEventContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notice_event_contacts }
    end
  end

  # GET /notice_event_contacts/1
  # GET /notice_event_contacts/1.json
  def show
    @notice_event_contact = NoticeEventContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notice_event_contact }
    end
  end

  # GET /notice_event_contacts/new
  # GET /notice_event_contacts/new.json
  def new
    @notice_event_contact = NoticeEventContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notice_event_contact }
    end
  end

  # GET /notice_event_contacts/1/edit
  def edit
    @notice_event_contact = NoticeEventContact.find(params[:id])
  end

  # POST /notice_event_contacts
  # POST /notice_event_contacts.json
  def create
    @notice_event_contact = NoticeEventContact.new(params[:notice_event_contact])

    respond_to do |format|
      if @notice_event_contact.save
        format.html { redirect_to @notice_event_contact, notice: 'Notice event contact was successfully created.' }
        format.json { render json: @notice_event_contact, status: :created, location: @notice_event_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @notice_event_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notice_event_contacts/1
  # PUT /notice_event_contacts/1.json
  def update
    @notice_event_contact = NoticeEventContact.find(params[:id])

    respond_to do |format|
      if @notice_event_contact.update_attributes(params[:notice_event_contact])
        format.html { redirect_to @notice_event_contact, notice: 'Notice event contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notice_event_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_event_contacts/1
  # DELETE /notice_event_contacts/1.json
  def destroy
    @notice_event_contact = NoticeEventContact.find(params[:id])
    @notice_event_contact.destroy

    respond_to do |format|
      format.html { redirect_to notice_event_contacts_url }
      format.json { head :no_content }
    end
  end
end
