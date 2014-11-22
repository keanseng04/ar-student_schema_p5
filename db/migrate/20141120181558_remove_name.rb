require_relative '../config'
require_relative '../../app/models/student'

# this is where you should use an ActiveRecord migration to

class RemoveName < ActiveRecord::Migration
    def up
    # # HINT: checkout ActiveRecord::Migration.create_table
    remove_column :students, :first_name, :string
    end
end
