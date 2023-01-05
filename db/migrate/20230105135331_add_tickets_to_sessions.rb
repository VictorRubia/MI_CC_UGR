class AddTicketsToSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :num_tickets, :integer
    add_column :sessions, :price, :decimal
  end
end