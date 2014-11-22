require_relative '../config'
require_relative '../../app/models/student'

# this is where you should use an ActiveRecord migration to

class RemoveLastName < ActiveRecord::Migration
    def up
    # # HINT: checkout ActiveRecord::Migration.create_table
    remove_column :students, :last_name, :string
    end
end
