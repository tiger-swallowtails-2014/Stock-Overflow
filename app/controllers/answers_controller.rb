class AnswersController < ApplicationController
  def create
    load_user; load_question
    @answer = Answer.create(content: params[:content])
    # CR - create a current_user method on application controller
    # Use the AR association builders to create @answer = @question.answers.create(content: params[:content])
    @user.answers << @answer
    @question.answers << @answer
    # CR - not sure why this is render nothing - looks like it is not ajaxified.
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

