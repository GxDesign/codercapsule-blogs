class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.belongs_to :school, index: true
      t.belongs_to :classroom, index: true
      t.string :avatar
      t.string :firstname
      t.string :lastname
      t.string :title
      t.string :email
      t.string :username
      t.string :blog_url
      t.string :password
      t.string :blog_title
      t.text :blog_description

      t.timestamps null: false
    end
    add_foreign_key :teachers, :schools
    add_foreign_key :teachers, :classrooms
  end
end
