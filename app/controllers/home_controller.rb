class HomeController < ApplicationController
  def index
    @orbituarysites = Orbituarysite.all
    if user_signed_in?
      @orbituarysite = current_user.orbituarysites.new
    else
      @orbituarysite = Orbituarysite.new
    end
  end
  
  def account
    @orbituarysites = current_user.orbituarysites.all
  end
end
