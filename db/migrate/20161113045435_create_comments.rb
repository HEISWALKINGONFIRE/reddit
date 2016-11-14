class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
    	t.text :body
    	t.integer :link_id, :user_id
    	t.datetime :created_at

      t.timestamps
    end
  end
end
