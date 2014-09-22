class QuestionsController < ApplicationController

  def index

  end

  def show
    p session[:user_id]
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])

  end

  def new
    @question = Question.new
  end

  def create
    p params
    @user = User.find(params[:user_id])
    @question = Question.create(title: params[:title], content: params[:content])
    @user.questions << @question
    if @question.save
      redirect_to user_question_path(@user, @question)
    else
      render :new
    end
  end



  private

  def load_question
    @question = Question.find(params[:id])
  end

  def load_user
    @user = User.find(params[:id])
  end
end

