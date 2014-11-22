require_relative '../../db/config'

class Teacher_Student < ActiveRecord::Base
  # belongs_to :students, :through => :teachers_students
  belongs_to :teachers
  belongs_to :students


end