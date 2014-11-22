require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachersStudents < ActiveRecord::Migration
    def change
    create_table :teachers_students do |t|
      t.belongs_to :students
      t.belongs_to :teachers
      t.timestamps
    end
  end
end

