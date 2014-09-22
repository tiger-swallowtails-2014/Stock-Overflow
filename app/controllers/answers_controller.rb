class AnswersController < ApplicationController
  def create
    load_user; load_question
    @answer = Answer.create(content: params[:content])
    @user.answers << @answer
    @question.answers << @answer
    render nothing: true
  end

  private

  def load_user
    @user = User.find(session[:user_id])
  end

  def load_question
    @question = Question.find(params[:question_id])
  end
end

