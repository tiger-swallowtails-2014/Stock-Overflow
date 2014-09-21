class QuestionsController < ApplicationController
  def index
    @most_recent_questions = Question.all.sort{|a, b| a.created_at <=> b.created_at}
    @highest_voted_questions = Question.all.sort{|a, b| b.votes.count <=> a.votes.count}
    @trending_questions = Question.all.sort{|a, b| b.responses.count <=> a.responses.count}
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

