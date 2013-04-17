class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :task
      t.text :suggestion
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
