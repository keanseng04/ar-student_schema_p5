require 'rspec'
require 'date'
require_relative '../app/models/student'
require_relative '../app/models/teacher'

describe Teacher do
  it "should have many students through teachers_students" do
    t = Teacher.reflect_on_association(:teachers_students)
    t.macro.should == :has_many
  end
end
