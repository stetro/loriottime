class EventsController < ApplicationController
  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
    @phase = Phase.find(:all)
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    @phase = Phase.find(:all)
  end

  # POST /events
  def create
    @event = Event.new(params[:event])

    if @event.save
      redirect_to(events_path, :notice => 'Event wurde erfolgreich erstellt.')
    else
      @phase = Phase.find(:all)
      render :action => "new"
    end

  end

  # PUT /events/1
  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(params[:event])
      redirect_to(events_path, :notice => 'Event wurde erfolgreich ge&auml;ndert.')
    else
      render :action => "edit"
    end

  end

  # DELETE /events/1
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to(events_path, :notice => 'Event wurde erfolgreich gel&ouml;scht.')
  end
end
