class PeopleController < ApplicationController
  # GET /people
  def index
    @people = Person.all
  end

  # GET /people/1
  def show
    @person = Person.find(params[:id])
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to(@person, :notice => 'Person wurde erfolgreich gespeichert.')
    else
      render :action => "new"
    end
  end

  # PUT /people/1
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to(people_url, :notice => 'Person wurde erfolgreich gespeichert.')
    else
      render :action => "edit"
    end
  end

  # DELETE /people/1
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to(people_url,:notice => 'Person wurde erfolgreich gelöscht.')
  end
end
