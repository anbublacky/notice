class HomeController < ApplicationController
  def index
    @orbituarysites = Orbituarysite.paginate(:page => params[:page], :per_page => 9)
    if user_signed_in?
      @orbituarysite = current_user.orbituarysites.new
    else
      @orbituarysite = Orbituarysite.new
    end
  end
  
  def account
    @orbituarysites = current_user.orbituarysites.paginate(:page => params[:page], :per_page => 5)
  end
end
