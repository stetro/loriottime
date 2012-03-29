class PhasesController < ApplicationController
  # GET /phases
  def index
    @phases = Phase.page(params[:page]).per(20)
  end

  # GET /phases/1
  def show
    @phase = Phase.find(params[:id])
  end

  # GET /phases/new
  # GET /phases/new.xml
  def new
    @phase = Phase.new
  end

  # GET /phases/1/edit
  def edit
    @phase = Phase.find(params[:id])
  end

  # POST /phases
  def create
    @phase = Phase.new(params[:phase])
    if @phase.save
      redirect_to(phases_path, :notice => 'Phase wurde erfolgreich eingetragen.')
    else
      render :action => "new"
    end
  end

  # PUT /phases/1
  def update
    @phase = Phase.find(params[:id])
    if @phase.update_attributes(params[:phase])
      redirect_to(phases_path, :notice => 'Phase wurde erfolgreich gespeichert.')
    else
      render :action => "edit"
    end
  end

  # DELETE /phases/1
  def destroy
    @phase = Phase.find(params[:id])
    @phase.destroy
    redirect_to(phases_url,:notice => 'Phase wurde erfolgreich gel&ouml;scht.')
  end
end
