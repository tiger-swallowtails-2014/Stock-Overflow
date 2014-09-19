class CreateResponses < ActiveRecord::Migration
   def change
    create_table :responses do |t|
      t.text :content
      t.belongs_to :user
      t.references :response_context, polymorphic: true
      t.timestamps
    end
  end
end
