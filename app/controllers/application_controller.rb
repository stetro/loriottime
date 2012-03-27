class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
    redirect_to(people_url)
  end
end
