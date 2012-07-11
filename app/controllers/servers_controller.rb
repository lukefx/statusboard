class ServersController < ApplicationController
 
  def index
    
    @servers = Server.all

    respond_to do |format|
      format.html
      format.xml  { render :xml => @servers }
      format.json { render :json => @servers }
    end
  end
  
  def show
    @server = Server.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @server }
    end
  end

  def new
    @server = Server.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @server }
    end
  end

  def edit
    @server = Server.find(params[:id])
  end

  def create
    @server = Server.new(params[:server])
    respond_to do |format|
      if @server.save
        format.html { redirect_to(root_url, :notice => 'Server was successfully created.') }
        format.xml  { render :xml => @server, :status => :created, :location => @server }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @server.errors, :status => :unprocessable_entity }
      end
    end
        
  end

  def update

    @server = Server.find(params[:id])
    
    respond_to do |format|
      if @server.update_attributes(params[:server])
        format.html { redirect_to(@server, :notice => 'Server was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @server.errors, :status => :unprocessable_entity }
      end
    end
       
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @server = Server.find(params[:id])
    @server.destroy
    
    respond_to do |format|
      format.html { redirect_to(servers_url) }
      format.xml  { head :ok }
    end
  end
  
end

