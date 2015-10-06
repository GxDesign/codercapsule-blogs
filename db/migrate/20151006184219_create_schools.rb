class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :street_address
      t.integer :street_number
      t.string :route
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.string :email
      t.string :username
      t.string :blog_url
      t.string :password
      t.string :avatar
      t.text :description

      t.timestamps null: false
    end
  end
end
