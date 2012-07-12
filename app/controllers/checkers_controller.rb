class CheckersController < ApplicationController

  def new
  
    @checker = Checker.new
    @checker.type = params[:type]
    @checker.server_id = params[:server_id]
    
    respond_to do |format|
      format.html { render @checker.type }
      format.js   { render @checker, :formats => :js }
    end
    
  end

  def create
    @checker = Checker.new(params[:checker])
    respond_to do |format|
      if @checker.save
        format.html { redirect_to(root_url, :notice => 'Server was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end  
  
  def destroy
    @checker = Checker.find(params[:id])
    @checker.destroy
    
    respond_to do |format|
      format.html { redirect_to(root_url) }
    end
  end  
  
end
