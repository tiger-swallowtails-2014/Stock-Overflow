class ResponsesController < ApplicationController
  def index
  end
  def show
  end
  def new
    p "reached here"
    @response = Response.new
    render :layout => false
  end

  def create
  end


end

