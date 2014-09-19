class Vote < ActiveRecord::Base
  attr_accessible :num_of_votes, :vote_context_type

  belongs_to :vote_context, polymorphic: true
end