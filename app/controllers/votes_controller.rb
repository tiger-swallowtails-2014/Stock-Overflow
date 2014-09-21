class VotesController < ApplicationController
  def show
    load_question; load_user;
    # @answers = @question.answers
  end

  def new
    p "clicked"
    if params[:context_type] == "Question"
      @question = Question.find(params[:question_id])
      @question.votes << Vote.create(vote_context_id: params[:question_id], vote_context_type: "Question");
      @question_votes = {type: "Question", count: @question.votes.count}
      render json: @question_votes
    elsif params[:context_type] == "Answer"
      @answer = Answer.find(params[:answer_id])
      @answer.votes << Vote.create(vote_context_id: params[:answer_id], vote_context_type: "Answer");
      @answer_votes = {type: "Answer", count: @answer.votes.count}
      render json: @answer_votes
    end
  end

  def destroy
    p "clicked"
    if params[:context_type] == "Question"
      @question = Question.find(params[:question_id])
      @question.votes.last.delete
      @question_votes = {type: "Question", count: @question.votes.count}
      render json: @question_votes
    elsif params[:context_type] == "Answer"
      @answer = Answer.find(params[:answer_id])
      @answer.votes.last.delete
      @answer_votes = {type: "Answer", count: @answer.votes.count}
      render json: @answer_votes
    end
  end

  private

  def load_question
    @question = Question.find(params[:id])
  end

  def load_user
    @user = User.find(params[:id])
  end

  def data_hash(type, count)
    {type: type, count: count}
  end
end
