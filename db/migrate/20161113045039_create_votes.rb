class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
    	t.integer :voter_id
    	t.string :upvote, :downvote

      t.timestamps
    end
  end
end
