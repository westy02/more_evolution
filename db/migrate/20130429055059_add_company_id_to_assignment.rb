class AddCompanyIdToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :company_id, :integer
  end
end
