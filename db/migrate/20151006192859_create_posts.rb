class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.string :title
      t.text :content
      t.datetime :created_at
      t.boolean :published
      t.datetime :published_at

      t.timestamps null: false
    end
  end
end
