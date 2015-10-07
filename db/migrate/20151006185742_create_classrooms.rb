class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
     t.belongs_to :school, index: true
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :classrooms, :schools
  end
end
