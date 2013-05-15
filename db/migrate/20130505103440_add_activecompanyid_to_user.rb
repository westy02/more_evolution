class AddActivecompanyidToUser < ActiveRecord::Migration
  def change
    add_column :users, :active_company_id, :integer
  end
end
