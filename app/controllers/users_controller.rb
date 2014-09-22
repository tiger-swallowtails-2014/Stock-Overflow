class UsersController < ApplicationController

  def index
    p session[:user_id]
    if session[:user_id] != nil
      @user = User.find(session[:user_id])
    end

    @most_recent_questions = Question.all.sort{|a, b| a.created_at <=> b.created_at}
    @highest_voted_questions = Question.all.sort{|a, b| b.votes.count <=> a.votes.count}
    @trending_questions = Question.all.sort{|a, b| b.responses.count <=> a.responses.count}
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @questions = @user.questions
    @responses = @user.responses
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to :root
    else
      render :new
    end
  end

end
