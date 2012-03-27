class RequestsController < ApplicationController
  # GET /requests
  def index
    @requests = Request.all
  end

  # GET /requests/1
  def show
    @request = Request.find(params[:id])
  end

  # GET /requests/new
  def new
    @request = Request.new
    @people = Person.find(:all)
    @events = Event.find(:all)
    @phases = Phase.find(:all)
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
    @people = Person.find(:all)
    @events = Event.find(:all)
    @phases = Phase.find(:all)
  end

  # POST /requests
  def create
    @request = Request.new(params[:request])
    if @request.save
      redirect_to(requests_url, :notice => 'Anfrage wurde erfolgreich erstellt!')
    else
      @people = Person.find(:all)
      @events = Event.find(:all)
      @phases = Phase.find(:all)
      render :action => "new"
    end
  end

  # PUT /requests/1l
  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(params[:request])
      redirect_to(requests_url, :notice => 'Anfrage wurde erfolgreich gespeichert!')
    else
      @people = Person.find(:all)
      @events = Event.find(:all)
      @phases = Phase.find(:all)
      render :action => "edit"
    end
  end

  # DELETE /requests/1
  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to(requests_url,:notice => 'Anfrage wurde erfolgreich gel&ouml;scht!')
  end
end
