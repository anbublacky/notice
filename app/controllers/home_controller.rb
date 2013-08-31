class HomeController < ApplicationController
  def index
    @orbituarysites = Orbituarysite.all
  end
end
