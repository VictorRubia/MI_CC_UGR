json.extract! purchase, :id, :email, :num_tickets, :price, :timestamp, :session_id
json.url purchase_url(purchase, format: :json)
