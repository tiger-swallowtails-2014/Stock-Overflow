class Question < ActiveRecord::Base
  attr_accessible :title, :content
  belongs_to :user
  has_many :answers
  has_many :responses, as: :response_context
  has_many :votes, as: :vote_context
end
