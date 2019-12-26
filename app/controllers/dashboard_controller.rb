class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    #    @cameras = Camera.all
    @cameras = []
    @printers = []
    @servers = []
    
  end
end
