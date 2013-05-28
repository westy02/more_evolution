class CreateLifecycles < ActiveRecord::Migration
  def change
    create_table :lifecycles do |t|
      t.string :name
      t.string :description
      t.integer :rank

      t.timestamps
    end
  end
end
