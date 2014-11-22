require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
    has_many :teachers_students

    validates :email, :format => { :with => /.+@.+\..{2,}/}, :uniqueness => true
      validates :age, :numericality => { :greater_than => 5 }
      validates :phone, :format => { :with => /.+\d{3}.+\d{3}.+\d{4}.+/ }


      def name
        first_name + " " + last_name
      end

      def age
        Date.today.year - birthday.year
      end
      
      #testingg
end