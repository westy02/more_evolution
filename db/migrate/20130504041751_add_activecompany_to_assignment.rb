class AddActivecompanyToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :active_company, :boolean
  end
end
