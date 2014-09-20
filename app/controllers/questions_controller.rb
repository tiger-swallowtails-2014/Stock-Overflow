class QuestionsController < ApplicationController
  def show
    load_question; load_user;

  end

  private

  def load_question
    @question = Question.find(params[:id])
  end

  def load_user
    @user = User.find(params[:id])
  end
end


