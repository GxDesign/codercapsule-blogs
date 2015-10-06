class CreatePostTypes < ActiveRecord::Migration
  def change
    create_table :post_types do |t|
      t.string :icon
      t.string :name
      t.text :begin_html
      t.text :end_html

      t.timestamps null: false
    end
  end
end
