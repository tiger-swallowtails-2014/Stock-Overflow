class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :num_of_votes, default: 0
      t.references :vote_context, polymorphic: true
      t.timestamps
    end
  end
end
