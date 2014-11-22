require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  # belongs_to :students, :through => :teachers_students
  has_many :teachers_students
  validates :email, :format => { :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]{2,}\z/}
  validates :email, uniqueness: {:message => "Email not unique!"}

end