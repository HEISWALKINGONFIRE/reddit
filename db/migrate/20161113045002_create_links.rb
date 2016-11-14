class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
    	t.string :title
    	t.text :post
    	t.integer :user_id
    	t.datetime :created_at, :updated_at

      t.timestamps
    end
  end
end
