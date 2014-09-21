class QuestionsController < ApplicationController

  def index

  end

  def show
    # load_question; load_user
    # @answers = @question.answers
    @user = User.find(params[:user_id])
    @question = Question.find(params[:id])

  end


  private

  def load_question
    @question = Question.find(params[:id])
  end

  def load_user
    @user = User.find(params[:id])
  end
end

