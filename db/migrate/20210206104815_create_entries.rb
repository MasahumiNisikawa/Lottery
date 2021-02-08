class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :users_id
      t.integer :tickets_id
      t.integer :number

      t.timestamps
    end
  end
end
