class CreateTeacherClassrooms < ActiveRecord::Migration
  def change
    create_table :teacher_classrooms do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :classroom, index: true

      t.timestamps null: false
    end
    add_foreign_key :teacher_classrooms, :teachers
    add_foreign_key :teacher_classrooms, :classrooms
  end
end
