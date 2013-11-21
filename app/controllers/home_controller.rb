class HomeController < ApplicationController
  def index
    @orbituarysites = Orbituarysite.paginate(:page => params[:page], :per_page => 6).limit(6)
    if user_signed_in?
      @orbituarysite = current_user.orbituarysites.new
    else
      @orbituarysite = Orbituarysite.new
    end
  end
  
  def account
    @orbituarysites = current_user.orbituarysites.paginate(:page => params[:page], :per_page => 5)
  end

  def list_all_orbituary
    @orbituarysites = Orbituarysite.paginate(:page => params[:page], :per_page => 6)
    if user_signed_in?
      @orbituarysite = current_user.orbituarysites.new
    else
      @orbituarysite = Orbituarysite.new
    end
  end

  def list_all_remeberance
    @orbituarysites = Orbituarysite.paginate(:page => params[:page], :per_page => 6)
    if user_signed_in?
      @orbituarysite = current_user.orbituarysites.new
    else
      @orbituarysite = Orbituarysite.new
    end
  end
end
