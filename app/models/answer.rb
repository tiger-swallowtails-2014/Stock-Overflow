class Answer < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user
  belongs_to :question
  has_many :responses, as: :response_context
  has_many :votes, as: :vote_context
end