class AddDescriptionAndRankToEvolution < ActiveRecord::Migration
  def change
    add_column :evolutions, :description, :string
    add_column :evolutions, :rank, :integer
  end
end
