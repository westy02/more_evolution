class RemoveCompleteFromEvolution < ActiveRecord::Migration
  def up
    remove_column :evolutions, :complete
    remove_column :evolutions, :user_id
    remove_column :evolutions, :opportunity_id
  end

  def down
    add_column :evolutions, :opportunity_id, :interger
    add_column :evolutions, :user_id, :integer
    add_column :evolutions, :complete, :boolean
  end
end
