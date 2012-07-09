class DashboardController < ApplicationController
  
  def index
    @servers = Server.all
  end
  
end
