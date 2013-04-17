class CreateEvolutions < ActiveRecord::Migration
  def change
    create_table :evolutions do |t|
      t.integer :opportunity_id
      t.string :name
      t.integer :user_id
      t.boolean :complete

      t.timestamps
    end
  end
end
