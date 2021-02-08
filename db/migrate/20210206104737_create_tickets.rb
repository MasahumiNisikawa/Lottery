class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.date :date
      t.integer :entrysnumber

      t.timestamps
    end
  end
end
