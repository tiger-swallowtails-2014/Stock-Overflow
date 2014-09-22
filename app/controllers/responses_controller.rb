class ResponsesController < ApplicationController
  def index
  end
  def show
  end


  def create
    if params[:type] == "Question"
      @response = Response.create(
        content: params[:content],
        response_context_id: params[:question_id],
        response_context_type: "Question")
      Question.find(params[:question_id]).responses << @response
    elsif params[:type] == "Answer"
      @response = Response.create(
        content: params[:content],
        response_context_id: params[:answer_id],
        response_context_type: "Answer")
      Answer.find(params[:answer_id]).responses << @response
    end
    @user = User.find(session[:user_id])
    @user.responses << @response
    render :layout => false
  end


end


