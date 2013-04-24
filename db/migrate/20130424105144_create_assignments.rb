class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :user_type_id
      t.integer :opportunity_id
      t.integer :evolution_id

      t.timestamps
    end
  end
end
