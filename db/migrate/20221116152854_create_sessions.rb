class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :movie, null: false, foreign_key: true
      t.text :times
      t.text :dates

      t.timestamps
    end
  end
end
