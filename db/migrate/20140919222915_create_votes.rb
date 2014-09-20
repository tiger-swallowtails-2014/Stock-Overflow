class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :vote_context, polymorphic: true
      t.timestamps
    end
  end
end
