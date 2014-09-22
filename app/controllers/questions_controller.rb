class QuestionsController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])

  end


  def create
    @user = User.find(params[:user_id])
    @question = Question.new params[:question]

    if @question.save
      redirect_to user_question_path(@user, @question)
    else
      render :new
    end
  end

  def new
    @question = Question.new
  end

  private

  def load_question
    @question = Question.find(params[:id])
  end

  def load_user
    @user = User.find(params[:id])
  end
end

