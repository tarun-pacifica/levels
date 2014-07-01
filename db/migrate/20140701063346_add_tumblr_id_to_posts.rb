class AddTumblrIdToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :tumblr_id, :string
  end
end
