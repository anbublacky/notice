class HomeController < ApplicationController
  def index
    @orbituarysites = Orbituarysite.all
    @orbituarysite = Orbituarysite.new
  end
end
