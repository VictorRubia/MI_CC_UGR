class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :email
      t.integer :num_tickets
      t.decimal :price
      t.timestamp :timestamp
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
