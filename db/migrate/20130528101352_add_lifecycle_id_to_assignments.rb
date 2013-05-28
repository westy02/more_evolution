class AddLifecycleIdToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :lifecycle_id, :integer
  end
end
