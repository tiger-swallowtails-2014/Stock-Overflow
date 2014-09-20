class Vote < ActiveRecord::Base
  attr_accessible :num_of_votes, :vote_context_type, :vote_context_id

  belongs_to :vote_context, polymorphic: true
end