class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :name
    	t.string :title
    	t.text :body
    	t.string :image
    	t.integer :user_id

    	t.timestamps
    end
  end
end
