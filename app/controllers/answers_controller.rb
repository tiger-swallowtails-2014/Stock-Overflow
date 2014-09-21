class AnswersController < ApplicationController
  def show
    p params
    render nothing: true
  end
end

