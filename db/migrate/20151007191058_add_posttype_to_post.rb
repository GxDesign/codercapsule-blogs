class AddPosttypeToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :post_type, :belongs_to
  end
end
